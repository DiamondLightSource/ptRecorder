import os
import threading
import random
import serial
import time
import multitimer
import serial.tools.list_ports
import numpy as np
import easygui
import matplotlib.pyplot as plt
from matplotlib.widgets import Button
from matplotlib.widgets import CheckButtons

#Globals
Running = False
GetAllChannelDataCommand = "ARACD00000Z".encode("utf-8")
NextChannelCommand = "ARNXT00000Z".encode("utf-8")
GetDataFromChannelCommand = ["ARC0000000Z","ARC0100000Z","ARC0200000Z","ARC0300000Z","ARC0400000Z","ARC0500000Z","ARC0600000Z","ARC0700000Z","ARC0800000Z","ARC0900000Z","ARC1000000Z","ARC1100000Z","ARC1200000Z","ARC1300000Z","ARC1400000Z","ARC1500000Z"]
Conversions = np.zeros([16,1])
Conversions[14:] = 2
SetPoints = np.zeros([16,2])
LatestReadings = np.zeros([16,1])
SampleRate = 10
Doom = "+-----------------------------------------------------------------------------+\n|\                                                     -~ /     \  /          |\n|~~__     | \                                         | \/       /\          /|\n|    --   |  \                                        | / \    /    \     /   |\n|      |~_|   \                                   \___|/    \/         /      |\n|--__  |   -- |\________________________________/~~\~~|    /  \     /     \   |\n|   |~~--__  |~_|____|____|____|____|____|____|/ /  \/|\ /      \/          \/|\n|   |      |~--_|__|____|____|____|____|____|_/ /|    |/ \    /   \       /   |\n|___|______|__|_||____|____|____|____|____|__[]/_|----|    \/       \  /      |\n|  \mmmm :   | _|___|____|____|____|____|____|___|  /\|   /  \      /  \      |\n|      B :_--~~ |_|____|____|____|____|____|____|  |  |\/      \ /        \   |\n|  __--P :  |  /                                /  /  | \     /  \          /\|\n|~~  |   :  | /                                 ~~~   |  \  /      \      /   |\n|    |      |/                        .-.             |  /\          \  /     |\n|    |      /                        |   |            |/   \          /\      |\n|    |     /                        |     |            -_   \       /    \    |\n+-----------------------------------------------------------------------------+\n|          |  /|  |   |  2  3  4  | /~~~~~\ |       /|    |_| ....  ......... |\n|          |  ~|~ | % |           | | ~J~ | |       ~|~ % |_| ....  ......... |\n|   AMMO   |  HEALTH  |  5  6  7  |  \===/  |    ARMOR    |#| ....  ......... |\n+-----------------------------------------------------------------------------+"
Cheese ="            _     _\n            \).-.(/\n             (O O) (\n             />@<\ )\n    ___ ____(\ _ /)__    _______\n .-\" _ \"     ** **   \"=-\"  \\   \n|   ( )     _           o   :.   .\n|    \"     ( )     ()       ::   :\n|_          \"          ..   ::   :\n  )              ()   (  )  :|   |\n|\"    ()               \"\"   :|   |\n|   O        o .-.     _    :.   /\n\____.--._____(---)___(-)__//__dv"

#File setup
validfile = False
while not(validfile):
    SaveFilePath = easygui.diropenbox("Please choose where to save the data file")
    if SaveFilePath == None:
        cont = easygui.ynbox("Please enter a file location to continue","Invalid file location",["Continue","Quit"])
        if cont != True:
            exit()
    else:
        validfile = True
validfile = False
while not(validfile):
    SaveFileName = easygui.enterbox("Please enter filename to use/create (no file extension)")
    if SaveFileName == None:
        cont = easygui.ynbox("Please enter a valid file name to continue","Invalid file name",["Continue","Quit"])
        if cont != True:
            exit()
    else:
        validfile = True
SaveFileName += ".txt"
SetPointFileName = "SetPoints_" + SaveFileName
os.chdir(SaveFilePath)
SF = open(SaveFileName,"a")
SF.close()
SPF = open(SetPointFileName,"a")
SPF.close()

#Setting up serial connection
Ports = [comport.device for comport in serial.tools.list_ports.comports()]
while Ports == []:
    if easygui.ccbox("No active ports, re-try?"):
        time.sleep(0.5)
        Ports = [comport.device for comport in serial.tools.list_ports.comports()]
    else:
        exit()
if len(Ports)>1:
    Port = easygui.choicebox("Multiple active ports, please select which to use", choices=Ports)
else:
    Port = Ports[0]

ser = serial.Serial(port = Port, baudrate=115200)
         
#Initilising the figure that will be used as the gui
fig = plt.figure()
fig.set_tight_layout(True)

#Setting up gui grid to place the ui elements
gs = fig.add_gridspec(10,10)

#Setting up the space alloted to each gui element
PressurePlotAxis = fig.add_subplot(gs[0:8,0:7])
TempPlotAxis = PressurePlotAxis.twinx()

DataSelectAxis = fig.add_subplot(gs[0:8,7:10])
StartStopAxis = fig.add_subplot(gs[8:10,0:2])
SampleRateAxis = fig.add_subplot(gs[8:10,2:4])
SetupSetPointsAxis = fig.add_subplot(gs[8:10,4:6])
SetupIOAxis = fig.add_subplot(gs[8:10,6:8])
DevAxis = fig.add_subplot(gs[8:10,9:10])

#Setting up the gui elements into their alloted spaces and initilizing them

ChannelList = ["Channel 0","Channel 1","Channel 2","Channel 3","Channel 4","Channel 5","Channel 6","Channel 7","Channel 8","Channel 9","Channel 10","Channel 11","Channel 12","Channel 13","ThermoCouple 1","ThermoCouple 2"]
DisplayDataCheckBoxes = CheckButtons(DataSelectAxis,ChannelList)

StartStopBtn = Button(StartStopAxis,"Press To Start")
StartStopBtn.color = "firebrick"
StartStopBtn.hovercolor = "red"
SampleRateBtn = Button(SampleRateAxis,"Change Sample Rate")
SetupSetPointsBtn = Button(SetupSetPointsAxis,"Setup Set Points")
SetupIOBtn = Button(SetupIOAxis,"Setup IO")
DevBtn = Button(DevAxis,"")


#File IO functions
def LinesInFile():
    SaveFile = open(SaveFileName,"r")
    lines = 0
    for x in SaveFile:
        lines+=1
    SaveFile.close()
    return lines

def WriteDataToFile(ToWrite):
    SaveFile = open(SaveFileName,"a")
    SaveFile.write(str(time.time()))
    for n in range(16):
        SaveFile.write(",")
        SaveFile.write(str(ToWrite[n]).removeprefix("[").removesuffix("]"))
    SaveFile.write("\n")
    SaveFile.close()

def WriteSetPointFile(Time):
    SPF = open(SetPointFileName,'a')
    SPF.write(str(Time-0.1) + ",0\n")
    SPF.write(str(Time) + ",1\n")
    SPF.write(str(Time+0.1) + ",0\n")
    SPF.close()

def ReadDataFromFile():
    ToPlot = DisplayDataCheckBoxes.get_status()
    AmountToPlot = sum(ToPlot)
    Readings = np.zeros([AmountToPlot+1,LinesInFile()])
    SaveFile = open(SaveFileName,"r")
    linetrack = 0
    for x in SaveFile:
        linedata = x.strip().split(",")
        plottrack = 1
        Readings[0,linetrack] = linedata[0]
        for y in range(16):
            if ToPlot[y]:               
                Readings[plottrack,linetrack] = linedata[y+1]
                plottrack +=1
        linetrack +=1
    SaveFile.close()
    return Readings

#Conversion function
def ConvertVoltage(Conversion,Voltage):
    if Conversion == 0:
        return Voltage
    elif Conversion == 1:
        #Gauge controller conversion (937a and 937B) to mBar
        return np.power(10,(Voltage/0.6)-12) * 1.33322
    elif Conversion == 2:
        #Thermocouple conversion (interpret number as signed 14 bit with 0.25C per unit) to degrees c
        if bin(int(Voltage))[2] == "1":
            #Neg temp
            NewNum = ""
            for digit in bin(int(Voltage))[3:]:
                if digit == "1":
                    NewNum += "0"
                else:
                    NewNum += "1"
            return float(int(NewNum,2)+1)*-0.25
        else:
            #pos temp
            return float(Voltage)*0.25
    elif Conversion == 3:
        #972B Conversion to mBar
        return np.power(10,(2*Voltage)-11)*1.33322
    elif Conversion == 4:
        #925 Conversion to mBar
        return np.power(10,Voltage-6)*1.33322
    elif Conversion == 5:
        #902B Conversion to mBar
        return Voltage*133.322
    else:
        return 0

#Data retrival function from seeeduino
def RequestData():
    global Conversions
    global SetPoints
    global LatestReadings

    ToAdd = np.zeros([16,1])
    print("Requesting data")
    ser.write(GetAllChannelDataCommand)

    #Wait for the full 88 byte packet to be recieved from the device
    while ser.in_waiting != 88:
            time.sleep(0.01) 

    Packet = ser.read_all().decode('utf-8')  
    print("Got packet: " + Packet)

    #Extract the data section
    Packet = Packet.removeprefix("ADACH").removesuffix("SZ\r\n")
    #print(Packet)
    #Seperate out channel data
    try:
        for n in range(16):
            ToAdd[n] = Packet[(n*5):((n*5)+5)]
    except:
        print("Failed, packet incrorrect")
    else:
    
        #Convert data
        #Conversion to input voltage (Before pd)
        ToAdd *= 0.00015625

        #Do any requested conversions
        for n in range(16):
            ToAdd[n] = ConvertVoltage(Conversions[n],ToAdd[n])

        #Check Set points
        for n in range(16):
            if SetPoints[n,0]:
                if SetPoints[n,1]:
                    print("Above")
                    if ToAdd[n] > SetPoints[n,0]:
                        WriteSetPointFile(time.time())
                else:
                    print("Below")
                    if ToAdd[n] < SetPoints[n,0]:
                        WriteSetPointFile(time.time())

        #Write data to CSV
        WriteDataToFile(ToAdd)

        LatestReadings = ToAdd

#Plotting function for when the live graph need updating
def UpdatePlot():
    global PressurePlotAxis
    global TempPlotAxis
    global DisplayDataCheckBoxes

    PressurePlotAxis.cla()
    TempPlotAxis.cla()

    #Identifying how many channels are to be plotted and detailing which are temperature plots
    ToPlot = DisplayDataCheckBoxes.get_status()
    AmountToPlot = sum(ToPlot)
    ThermoPlots = sum(ToPlot[15:])
    Thermo = np.zeros([16])
    if ThermoPlots:
        Thermo[-ThermoPlots:] = 1

    #Getting plotting data
    PlotData = ReadDataFromFile()

    #Plotting the data
    for n in range(AmountToPlot):
        if Thermo[n]:
            TempPlotAxis.plot(PlotData[0,:],PlotData[n+1,:])
        else:
            PressurePlotAxis.plot(PlotData[0,:],PlotData[n+1,:])

    TempPlotAxis.yaxis.set_ticks_position('right')
    PressurePlotAxis.set_xlabel("Time (s)")
    if sum(Conversions[0:14]) != 0:
        PressurePlotAxis.set_ylabel("Pressure (mBar)")
    else:
        PressurePlotAxis.set_ylabel("Voltage (V)")
    TempPlotAxis.set_ylabel("Temperature (°C)")
    #Refreshing the figure
    fig.canvas.draw()

#Looped function to read new data and update graph
def ReadAndUpdate():
    t1 = time.time()
    RequestData()
    UpdatePlot()
    UpdateCheckBoxes()
    print(time.time() - t1)

Looper = multitimer.MultiTimer(SampleRate,ReadAndUpdate,count=-1,runonstart=True)

def UpdateCheckBoxes():
    global LatestReadings
    global DisplayDataCheckBoxes
    global ChannelList
    global fig
    for n in range(16):
        DisplayDataCheckBoxes.labels[n].set_text(ChannelList[n] + ": " + str(LatestReadings[n]))
    fig.canvas.draw()
    
def SetupControllerPort(Four):
    global ChannelList
    global Conversions
    Ofset = 0
    if Four:
        Ofset = 7
        P = " (P4)"
    else:
        P = " (P1)"

    TypeOfController = easygui.choicebox("Enter type of Gauge controller:","Controller",["937A","937B"])
    if TypeOfController == "937A":

        ChannelList[5+Ofset] = "937A Cold Cathode 1" + P

        ModuleChoice = easygui.choicebox("Enter second module:","Modules",["Cold Cathode","Pirani"])
        if ModuleChoice == "Cold Cathode":
            ChannelList[4+Ofset] = "937A Cold Cathode 2" + P
            ChannelList[3+Ofset] = "None" + P
        elif ModuleChoice == "Pirani":
            ChannelList[4+Ofset] = "937A Pirani 1.1" + P
            ChannelList[3+Ofset] = "937A Pirani 1.2" + P

        ModuleChoice = easygui.choicebox("Enter third module:","Modules",["Cold Cathode","Pirani"])
        if ModuleChoice == "Cold Cathode":
            ChannelList[2+Ofset] = "937A Cold Cathode 3" + P
            ChannelList[1+Ofset] = "None" + P
        elif ModuleChoice == "Pirani":
            ChannelList[2+Ofset] = "937A Pirani 2.1" + P
            ChannelList[1+Ofset] = "937A Pirani 2.2" + P

        ChannelList[6+Ofset] = "None" + P

        UpdateCheckBoxes()
    elif TypeOfController == "937B":
        ModuleChoice = easygui.choicebox("Enter first module:","Modules",["Cold Cathode","Pirani"])
        if ModuleChoice == "Cold Cathode":
            ChannelList[5+Ofset] = "937B Cold Cathode 1" + P
            ChannelList[4+Ofset] = "None" + P
        elif ModuleChoice == "Pirani":
            ChannelList[5+Ofset] = "937B Pirani 2.1" + P
            ChannelList[4+Ofset] = "937B Pirani 2.2" + P

        ModuleChoice = easygui.choicebox("Enter second module:","Modules",["Cold Cathode","Pirani"])
        if ModuleChoice == "Cold Cathode":
            ChannelList[3+Ofset] = "937B Cold Cathode 2" + P
            ChannelList[2+Ofset] = "None" + P
        elif ModuleChoice == "Pirani":
            ChannelList[3+Ofset] = "937B Pirani 2.1" + P
            ChannelList[2+Ofset] = "937B Pirani 2.2" + P

        ModuleChoice = easygui.choicebox("Enter third module:","Modules",["Cold Cathode","Pirani"])
        if ModuleChoice == "Cold Cathode":
            ChannelList[1+Ofset] = "937B Cold Cathode 3" + P
            ChannelList[6+Ofset] = "None" + P
        elif ModuleChoice == "Pirani":
            ChannelList[1+Ofset] = "937B Pirani 2.1" + P
            ChannelList[6+Ofset] = "937B Pirani 2.2" + P

        UpdateCheckBoxes()

    if TypeOfController != None:
        ConvertChoice = easygui.ynbox("Should the data be converted?","Conversion",["Pressures","Raw Voltages"])
        if ConvertChoice:
            Conversion = 1
        else:
            Conversion = 0
        for n in range(1,7):
            Conversions[n+Ofset] = Conversion
    
def SetupSinglePort(Three):
    global ChannelList
    Ofset = 0
    if Three:
        Ofset = 7
        P = " (P3)"
    else:
        P = " (P2)"

    TypeOfController = easygui.choicebox("Enter type of Gauge:","Gauge",["972B","925","902B"])
    if TypeOfController != None:
        ChannelList[0+Ofset] = TypeOfController + P
        ConvertChoice = easygui.ynbox("Should the data be converted?","Conversion",["Pressures","Raw Voltages"])
        if ConvertChoice:
            if TypeOfController == "972B":
                #Conv 3
                Conversions[0+Ofset] = 3
            elif TypeOfController == "925":            
                #Conv 4
                Conversions[0+Ofset] = 4
            elif TypeOfController == "902B":
                #Conv 5
                Conversions[0+Ofset] = 5
        else:
            Conversions[0+Ofset] = 0
            
        UpdateCheckBoxes()

def AddSetPoints():
    global SetPoints
    WhichChannels = easygui.multchoicebox("Choose which channel(s) to trigger on","Set points",ChannelList)
    if WhichChannels != None:
        for Channel in WhichChannels:
            index = ChannelList.index(Channel) 
            Valid = False
            while not(Valid):
                SetPointValue =  easygui.multenterbox("Enter next set point value for channel: " + Channel,"Value",["Value","Exponent"])
                if SetPointValue != None:                    
                    try:
                        SetPoints[index,0] = float(SetPointValue[0])*(np.power(10,float(SetPointValue[1])))
                    except:
                        Valid = False
                        easygui.msgbox("Invalid value, please enter 2 values")
                    else:
                        Valid = True                 
                else:
                    print("Cancelled")
                    Valid = False
                    break
            if Valid:
                Valid = False
                while not(Valid):
                    GreaterOrLower = easygui.ynbox("Greater Than Or lower than this value?","Greater or Lower",["Greater","Lower"])
                    if GreaterOrLower == None:
                        easygui.msgbox("Please choose an option")
                    else:
                        SetPoints[index,1] = GreaterOrLower
                        Valid = True

def RemoveSetPoints():
    global SetPoints
    global ChannelList

    CurrentSetPointIndexes = np.nonzero(SetPoints[:,0])[0]
    AmountOfSetPoints = np.size(CurrentSetPointIndexes)

    if AmountOfSetPoints != 0:
        SetPointChannels = np.array(np.zeros([AmountOfSetPoints,1]),dtype=str)
        for Count,PointIndex in enumerate(CurrentSetPointIndexes):
            SetPointChannels[Count] = ChannelList[int(PointIndex)]
        RemovalChoice = easygui.multchoicebox("Choose set point(s) to remove:","Remove",SetPointChannels) 
        if RemovalChoice != None:
            for Removal in RemovalChoice:
                RemovalIndex = ChannelList.index(Removal.removeprefix("['").removesuffix("']"))
                SetPoints[RemovalIndex,0] = 0
                SetPoints[RemovalIndex,1] = 0
    else:
        easygui.msgbox("No set points to remove")

#Setting up all of the buttons functions to be called later
class WidgetFunctions:

    def StartStop(self,event):      
        global Running     
        print("Start/Stop")
        if Running:
            print("Stopping")
            Looper.stop()
            Running = False
            StartStopBtn.label.set_text("Press To Start")
            StartStopBtn.color = "firebrick"
            StartStopBtn.hovercolor = "red"
        else:
            print("Starting")
            Running = True
            StartStopBtn.label.set_text("Press To Stop")
            StartStopBtn.color = "green"
            StartStopBtn.hovercolor = "limegreen"
            Looper.start()           
  
    def ChangeSampleRate(self,event):
        global SampleRate
        print("Changing sample rate")
        try:
            NewRate = float(easygui.enterbox("Enter new sample rate (seconds)"))
            if NewRate < 2:
                raise Exception
        except:
            easygui.msgbox("Invalid input, please enter a numerical ammout (minimum 2)")
        else:         
            print("Changed sample rate")
            SampleRate = NewRate
            Looper.interval = SampleRate
            easygui.msgbox("Sample rate changed")
        
    def SetupIO(self,event):       
        print("Setting up io")
        PortToSetup = easygui.choicebox("Select port to setup:","Port Select",["1","2","3","4"])
        if PortToSetup == "1":
            SetupControllerPort(False)
        elif PortToSetup == "2":
            SetupSinglePort(False)
        elif PortToSetup == "3":
            SetupSinglePort(True)
        elif PortToSetup == "4":            
            SetupControllerPort(True)
            
    def SetupSetPoints(self,event):
        global SetPoints
        print("Setting up set points")
        AOR = easygui.ynbox("Add or remove set points","Add or Remove",["Add","Remove"])
        if AOR != None:
            if AOR:
                print("Add")
                AddSetPoints()
            else:
                print("Remove")
                RemoveSetPoints()

    def DevButton(self,event):
        if random.random() > 0.5:
            easygui.msgbox(Doom)
        else:
            easygui.msgbox(Cheese)

BtnFuncs = WidgetFunctions()

StartStopBtn.on_clicked(BtnFuncs.StartStop)
SampleRateBtn.on_clicked(BtnFuncs.ChangeSampleRate)
SetupSetPointsBtn.on_clicked(BtnFuncs.SetupSetPoints)
SetupIOBtn.on_clicked(BtnFuncs.SetupIO)
DevBtn.on_clicked(BtnFuncs.DevButton)

#Maximising the window upon startup
wm = plt.get_current_fig_manager()
wm.window.state('zoomed')

#Displaying the gui
plt.show(block=True)
#When gui closed stop timer
Looper.stop()
