EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4500 1400 4200 1400
Text GLabel 4500 1400 2    50   Output ~ 0
SCK
Wire Wire Line
	4500 1200 4200 1200
Text GLabel 4500 1200 2    50   Output ~ 0
MOSI
Text GLabel 2250 1200 0    50   Input ~ 0
MISO
Wire Wire Line
	4500 1300 4200 1300
Text GLabel 4500 1300 2    50   Output ~ 0
CS3
$Comp
L Device:R R?
U 1 1 613D4D81
P 9850 4050
AR Path="/60F8AD1A/613D4D81" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4D81" Ref="R29"  Part="1" 
F 0 "R29" H 9920 4096 50  0000 L CNN
F 1 "3k" H 9920 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 9780 4050 50  0001 C CNN
F 3 "~" H 9850 4050 50  0001 C CNN
	1    9850 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C?
U 1 1 613D4D87
P 10250 4550
AR Path="/60F8AD1A/613D4D87" Ref="C?"  Part="1" 
AR Path="/610A7369/613D4D87" Ref="C22"  Part="1" 
F 0 "C22" H 10428 4596 50  0000 L CNN
F 1 "100pF" H 10428 4505 50  0000 C TNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 10250 4550 50  0001 C CNN
F 3 "~" H 10250 4550 50  0001 C CNN
	1    10250 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 613D4D8D
P 9850 4550
AR Path="/60F8AD1A/613D4D8D" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4D8D" Ref="R30"  Part="1" 
F 0 "R30" H 9920 4596 50  0000 L CNN
F 1 "2k" H 9920 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 9780 4550 50  0001 C CNN
F 3 "~" H 9850 4550 50  0001 C CNN
	1    9850 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4200 9850 4300
Connection ~ 9850 4300
Wire Wire Line
	9850 4300 9850 4400
Wire Wire Line
	9850 4700 9850 5050
Wire Wire Line
	10250 5050 10250 4800
Wire Wire Line
	9850 5050 10050 5050
Wire Wire Line
	9850 4300 9650 4300
$Comp
L power:GND #PWR?
U 1 1 613D4D9A
P 10050 5050
AR Path="/60F8AD1A/613D4D9A" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4D9A" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 10050 4800 50  0001 C CNN
F 1 "GND" H 10055 4877 50  0000 C CNN
F 2 "" H 10050 5050 50  0001 C CNN
F 3 "" H 10050 5050 50  0001 C CNN
	1    10050 5050
	1    0    0    -1  
$EndComp
Connection ~ 10050 5050
Wire Wire Line
	9850 4300 10250 4300
Wire Wire Line
	10050 5050 10250 5050
$Comp
L Device:R R?
U 1 1 613D4DA3
P 8950 4050
AR Path="/60F8AD1A/613D4DA3" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4DA3" Ref="R27"  Part="1" 
F 0 "R27" H 9020 4096 50  0000 L CNN
F 1 "3k" H 9020 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 8880 4050 50  0001 C CNN
F 3 "~" H 8950 4050 50  0001 C CNN
	1    8950 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C?
U 1 1 613D4DA9
P 9350 4550
AR Path="/60F8AD1A/613D4DA9" Ref="C?"  Part="1" 
AR Path="/610A7369/613D4DA9" Ref="C21"  Part="1" 
F 0 "C21" H 9528 4596 50  0000 L CNN
F 1 "100pF" H 9528 4505 50  0000 C TNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 9350 4550 50  0001 C CNN
F 3 "~" H 9350 4550 50  0001 C CNN
	1    9350 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 613D4DAF
P 8950 4550
AR Path="/60F8AD1A/613D4DAF" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4DAF" Ref="R28"  Part="1" 
F 0 "R28" H 9020 4596 50  0000 L CNN
F 1 "2k" H 9020 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 8880 4550 50  0001 C CNN
F 3 "~" H 8950 4550 50  0001 C CNN
	1    8950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4200 8950 4300
Connection ~ 8950 4300
Wire Wire Line
	8950 4300 8950 4400
Wire Wire Line
	8950 4700 8950 5050
Wire Wire Line
	9350 5050 9350 4800
Wire Wire Line
	8950 5050 9150 5050
Wire Wire Line
	8950 4300 8750 4300
$Comp
L power:GND #PWR?
U 1 1 613D4DBC
P 9150 5050
AR Path="/60F8AD1A/613D4DBC" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4DBC" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 9150 4800 50  0001 C CNN
F 1 "GND" H 9155 4877 50  0000 C CNN
F 2 "" H 9150 5050 50  0001 C CNN
F 3 "" H 9150 5050 50  0001 C CNN
	1    9150 5050
	1    0    0    -1  
$EndComp
Connection ~ 9150 5050
Wire Wire Line
	8950 4300 9350 4300
Wire Wire Line
	9150 5050 9350 5050
$Comp
L Device:R R?
U 1 1 613D4DC5
P 8050 4050
AR Path="/60F8AD1A/613D4DC5" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4DC5" Ref="R25"  Part="1" 
F 0 "R25" H 8120 4096 50  0000 L CNN
F 1 "3k" H 8120 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 7980 4050 50  0001 C CNN
F 3 "~" H 8050 4050 50  0001 C CNN
	1    8050 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C?
U 1 1 613D4DCB
P 8450 4550
AR Path="/60F8AD1A/613D4DCB" Ref="C?"  Part="1" 
AR Path="/610A7369/613D4DCB" Ref="C20"  Part="1" 
F 0 "C20" H 8628 4596 50  0000 L CNN
F 1 "100pF" H 8628 4505 50  0000 C TNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 8450 4550 50  0001 C CNN
F 3 "~" H 8450 4550 50  0001 C CNN
	1    8450 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 613D4DD1
P 8050 4550
AR Path="/60F8AD1A/613D4DD1" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4DD1" Ref="R26"  Part="1" 
F 0 "R26" H 8120 4596 50  0000 L CNN
F 1 "2k" H 8120 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 7980 4550 50  0001 C CNN
F 3 "~" H 8050 4550 50  0001 C CNN
	1    8050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4200 8050 4300
Connection ~ 8050 4300
Wire Wire Line
	8050 4300 8050 4400
Wire Wire Line
	8050 4700 8050 5050
Wire Wire Line
	8450 5050 8450 4800
Wire Wire Line
	8050 5050 8250 5050
Wire Wire Line
	8050 4300 7850 4300
$Comp
L power:GND #PWR?
U 1 1 613D4DDE
P 8250 5050
AR Path="/60F8AD1A/613D4DDE" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4DDE" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 8250 4800 50  0001 C CNN
F 1 "GND" H 8255 4877 50  0000 C CNN
F 2 "" H 8250 5050 50  0001 C CNN
F 3 "" H 8250 5050 50  0001 C CNN
	1    8250 5050
	1    0    0    -1  
$EndComp
Connection ~ 8250 5050
Wire Wire Line
	8050 4300 8450 4300
Wire Wire Line
	8250 5050 8450 5050
$Comp
L Device:R R?
U 1 1 613D4DE7
P 7150 4050
AR Path="/60F8AD1A/613D4DE7" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4DE7" Ref="R23"  Part="1" 
F 0 "R23" H 7220 4096 50  0000 L CNN
F 1 "3k" H 7220 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 7080 4050 50  0001 C CNN
F 3 "~" H 7150 4050 50  0001 C CNN
	1    7150 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C?
U 1 1 613D4DED
P 7550 4550
AR Path="/60F8AD1A/613D4DED" Ref="C?"  Part="1" 
AR Path="/610A7369/613D4DED" Ref="C19"  Part="1" 
F 0 "C19" H 7728 4596 50  0000 L CNN
F 1 "100pF" H 7728 4505 50  0000 C TNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 7550 4550 50  0001 C CNN
F 3 "~" H 7550 4550 50  0001 C CNN
	1    7550 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 613D4DF3
P 7150 4550
AR Path="/60F8AD1A/613D4DF3" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4DF3" Ref="R24"  Part="1" 
F 0 "R24" H 7220 4596 50  0000 L CNN
F 1 "2k" H 7220 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 7080 4550 50  0001 C CNN
F 3 "~" H 7150 4550 50  0001 C CNN
	1    7150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4200 7150 4300
Connection ~ 7150 4300
Wire Wire Line
	7150 4300 7150 4400
Wire Wire Line
	7150 4700 7150 5050
Wire Wire Line
	7550 5050 7550 4800
Wire Wire Line
	7150 5050 7350 5050
Wire Wire Line
	7150 4300 6950 4300
$Comp
L power:GND #PWR?
U 1 1 613D4E00
P 7350 5050
AR Path="/60F8AD1A/613D4E00" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4E00" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 7350 4800 50  0001 C CNN
F 1 "GND" H 7355 4877 50  0000 C CNN
F 2 "" H 7350 5050 50  0001 C CNN
F 3 "" H 7350 5050 50  0001 C CNN
	1    7350 5050
	1    0    0    -1  
$EndComp
Connection ~ 7350 5050
Wire Wire Line
	7150 4300 7550 4300
Wire Wire Line
	7350 5050 7550 5050
$Comp
L Device:R R?
U 1 1 613D4E09
P 6250 4050
AR Path="/60F8AD1A/613D4E09" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4E09" Ref="R21"  Part="1" 
F 0 "R21" H 6320 4096 50  0000 L CNN
F 1 "3k" H 6320 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 6180 4050 50  0001 C CNN
F 3 "~" H 6250 4050 50  0001 C CNN
	1    6250 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C?
U 1 1 613D4E0F
P 6650 4550
AR Path="/60F8AD1A/613D4E0F" Ref="C?"  Part="1" 
AR Path="/610A7369/613D4E0F" Ref="C18"  Part="1" 
F 0 "C18" H 6828 4596 50  0000 L CNN
F 1 "100pF" H 6828 4505 50  0000 C TNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 6650 4550 50  0001 C CNN
F 3 "~" H 6650 4550 50  0001 C CNN
	1    6650 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 613D4E15
P 6250 4550
AR Path="/60F8AD1A/613D4E15" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4E15" Ref="R22"  Part="1" 
F 0 "R22" H 6320 4596 50  0000 L CNN
F 1 "2k" H 6320 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 6180 4550 50  0001 C CNN
F 3 "~" H 6250 4550 50  0001 C CNN
	1    6250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4200 6250 4300
Connection ~ 6250 4300
Wire Wire Line
	6250 4300 6250 4400
Wire Wire Line
	6250 4700 6250 5050
Wire Wire Line
	6650 5050 6650 4800
Wire Wire Line
	6250 5050 6450 5050
Wire Wire Line
	6250 4300 6050 4300
$Comp
L power:GND #PWR?
U 1 1 613D4E22
P 6450 5050
AR Path="/60F8AD1A/613D4E22" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4E22" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 6450 4800 50  0001 C CNN
F 1 "GND" H 6455 4877 50  0000 C CNN
F 2 "" H 6450 5050 50  0001 C CNN
F 3 "" H 6450 5050 50  0001 C CNN
	1    6450 5050
	1    0    0    -1  
$EndComp
Connection ~ 6450 5050
Wire Wire Line
	6250 4300 6650 4300
Wire Wire Line
	6450 5050 6650 5050
$Comp
L Device:R R?
U 1 1 613D4E2B
P 5350 4050
AR Path="/60F8AD1A/613D4E2B" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4E2B" Ref="R19"  Part="1" 
F 0 "R19" H 5420 4096 50  0000 L CNN
F 1 "3k" H 5420 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 5280 4050 50  0001 C CNN
F 3 "~" H 5350 4050 50  0001 C CNN
	1    5350 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C?
U 1 1 613D4E31
P 5750 4550
AR Path="/60F8AD1A/613D4E31" Ref="C?"  Part="1" 
AR Path="/610A7369/613D4E31" Ref="C17"  Part="1" 
F 0 "C17" H 5928 4596 50  0000 C BNN
F 1 "100pF" H 5928 4505 50  0000 C TNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 5750 4550 50  0001 C CNN
F 3 "~" H 5750 4550 50  0001 C CNN
	1    5750 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 613D4E37
P 5350 4550
AR Path="/60F8AD1A/613D4E37" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4E37" Ref="R20"  Part="1" 
F 0 "R20" H 5420 4596 50  0000 L CNN
F 1 "2k" H 5420 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 5280 4550 50  0001 C CNN
F 3 "~" H 5350 4550 50  0001 C CNN
	1    5350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4200 5350 4300
Connection ~ 5350 4300
Wire Wire Line
	5350 4300 5350 4400
Wire Wire Line
	5750 5050 5750 4800
Wire Wire Line
	5350 5050 5550 5050
Wire Wire Line
	5350 4300 5150 4300
$Comp
L power:GND #PWR?
U 1 1 613D4E43
P 5550 5050
AR Path="/60F8AD1A/613D4E43" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4E43" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 5550 4800 50  0001 C CNN
F 1 "GND" H 5555 4877 50  0000 C CNN
F 2 "" H 5550 5050 50  0001 C CNN
F 3 "" H 5550 5050 50  0001 C CNN
	1    5550 5050
	1    0    0    -1  
$EndComp
Connection ~ 5550 5050
Wire Wire Line
	5350 4300 5750 4300
Wire Wire Line
	5550 5050 5750 5050
Wire Wire Line
	10200 2450 10600 2450
Wire Wire Line
	9850 3750 9850 3900
Wire Wire Line
	10600 2450 10600 3200
Wire Wire Line
	9850 3750 10600 3750
Wire Wire Line
	9200 2750 8950 2750
Wire Wire Line
	8950 2750 8950 3200
Wire Wire Line
	9200 2650 8050 2650
Wire Wire Line
	8050 2650 8050 3200
Wire Wire Line
	9200 2350 5350 2350
Wire Wire Line
	9200 2450 6250 2450
Wire Wire Line
	6250 2450 6250 3200
Wire Wire Line
	9200 2550 7150 2550
Wire Wire Line
	7150 2550 7150 3200
$Comp
L power:GND #PWR?
U 1 1 613D4E59
P 10200 2950
AR Path="/60F8AD1A/613D4E59" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4E59" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 10200 2700 50  0001 C CNN
F 1 "GND" H 10205 2777 50  0000 C CNN
F 2 "" H 10200 2950 50  0001 C CNN
F 3 "" H 10200 2950 50  0001 C CNN
	1    10200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4300 9650 5600
Wire Wire Line
	2250 1200 2500 1200
Wire Wire Line
	8750 4300 8750 5550
Wire Wire Line
	7850 4300 7850 5500
Wire Wire Line
	6950 4300 6950 5450
Wire Wire Line
	6050 4300 6050 5400
$Comp
L pspice:C C?
U 1 1 613D4E6B
P 1650 4950
AR Path="/60F8AD1A/613D4E6B" Ref="C?"  Part="1" 
AR Path="/610A7369/613D4E6B" Ref="C14"  Part="1" 
F 0 "C14" H 1828 4996 50  0000 L CNN
F 1 "10uF" H 1828 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 1650 4950 50  0001 C CNN
F 3 "~" H 1650 4950 50  0001 C CNN
	1    1650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4700 1800 4700
Wire Wire Line
	1650 5200 1800 5200
$Comp
L power:GND #PWR?
U 1 1 613D4E73
P 1800 5200
AR Path="/60F8AD1A/613D4E73" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4E73" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 1800 4950 50  0001 C CNN
F 1 "GND" H 1805 5027 50  0000 C CNN
F 2 "" H 1800 5200 50  0001 C CNN
F 3 "" H 1800 5200 50  0001 C CNN
	1    1800 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 613D4E79
P 2850 3050
AR Path="/60F8AD1A/613D4E79" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4E79" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 2850 2900 50  0001 C CNN
F 1 "+5V" H 2865 3223 50  0000 C CNN
F 2 "" H 2850 3050 50  0001 C CNN
F 3 "" H 2850 3050 50  0001 C CNN
	1    2850 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 613D4E7F
P 1800 4700
AR Path="/60F8AD1A/613D4E7F" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4E7F" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 1800 4550 50  0001 C CNN
F 1 "+3V3" H 1815 4873 50  0000 C CNN
F 2 "" H 1800 4700 50  0001 C CNN
F 3 "" H 1800 4700 50  0001 C CNN
	1    1800 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 613D4E85
P 2850 3550
AR Path="/60F8AD1A/613D4E85" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4E85" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 2850 3300 50  0001 C CNN
F 1 "GND" H 2855 3377 50  0000 C CNN
F 2 "" H 2850 3550 50  0001 C CNN
F 3 "" H 2850 3550 50  0001 C CNN
	1    2850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1800 2400 1900
Wire Wire Line
	2500 1800 2400 1800
Wire Wire Line
	2500 1900 2400 1900
Connection ~ 2400 1900
Wire Wire Line
	2400 1900 2400 2200
Wire Wire Line
	2500 2200 2400 2200
Wire Wire Line
	1450 1600 1450 3050
Wire Wire Line
	1200 1300 1200 5200
Wire Wire Line
	1350 1400 1350 4250
$Comp
L Device:R R?
U 1 1 613D4E95
P 1450 4450
AR Path="/60F8AD1A/613D4E95" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4E95" Ref="R16"  Part="1" 
F 0 "R16" H 1520 4496 50  0000 L CNN
F 1 "1k" H 1520 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 1380 4450 50  0001 C CNN
F 3 "~" H 1450 4450 50  0001 C CNN
	1    1450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4250 1450 4300
Wire Wire Line
	1450 4600 1450 4700
Text GLabel 1850 1700 0    50   Output ~ 0
Vref2
Wire Wire Line
	1900 1500 2500 1500
Wire Wire Line
	2150 2200 2400 2200
Connection ~ 2400 2200
Wire Wire Line
	1350 4250 1450 4250
Wire Wire Line
	1250 4700 1450 4700
Wire Wire Line
	1200 5200 1650 5200
Connection ~ 1650 5200
Wire Wire Line
	1650 4700 1450 4700
Connection ~ 1650 4700
Connection ~ 1450 4700
$Comp
L Device:R R?
U 1 1 613D4EB7
P 3700 6300
AR Path="/60F8AD1A/613D4EB7" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4EB7" Ref="R18"  Part="1" 
F 0 "R18" H 3770 6346 50  0000 L CNN
F 1 "3k" H 3770 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3630 6300 50  0001 C CNN
F 3 "~" H 3700 6300 50  0001 C CNN
	1    3700 6300
	0    1    1    0   
$EndComp
$Comp
L pspice:C C?
U 1 1 613D4EBD
P 3200 6700
AR Path="/60F8AD1A/613D4EBD" Ref="C?"  Part="1" 
AR Path="/610A7369/613D4EBD" Ref="C16"  Part="1" 
F 0 "C16" H 3378 6746 50  0000 C BNN
F 1 "100pF" H 3378 6655 50  0000 C TNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 3200 6700 50  0001 C CNN
F 3 "~" H 3200 6700 50  0001 C CNN
	1    3200 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 613D4EC3
P 3200 6300
AR Path="/60F8AD1A/613D4EC3" Ref="R?"  Part="1" 
AR Path="/610A7369/613D4EC3" Ref="R17"  Part="1" 
F 0 "R17" H 3270 6346 50  0000 L CNN
F 1 "2k" H 3270 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3130 6300 50  0001 C CNN
F 3 "~" H 3200 6300 50  0001 C CNN
	1    3200 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 6300 3450 6300
Connection ~ 3450 6300
Wire Wire Line
	3450 6300 3350 6300
Wire Wire Line
	3050 6300 2700 6300
Wire Wire Line
	2700 6700 2950 6700
$Comp
L power:GND #PWR?
U 1 1 613D4ECE
P 3500 7200
AR Path="/60F8AD1A/613D4ECE" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4ECE" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 3500 6950 50  0001 C CNN
F 1 "GND" H 3505 7027 50  0000 C CNN
F 2 "" H 3500 7200 50  0001 C CNN
F 3 "" H 3500 7200 50  0001 C CNN
	1    3500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6300 3450 6700
Wire Wire Line
	5000 6700 4800 6700
Wire Wire Line
	4800 6700 4800 6300
Wire Wire Line
	5000 6800 4800 6800
$Comp
L power:GND #PWR?
U 1 1 613D4ED8
P 4800 6800
AR Path="/60F8AD1A/613D4ED8" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4ED8" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 4800 6550 50  0001 C CNN
F 1 "GND" H 4805 6627 50  0000 C CNN
F 2 "" H 4800 6800 50  0001 C CNN
F 3 "" H 4800 6800 50  0001 C CNN
	1    4800 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4300 5150 5350
Wire Wire Line
	5350 2350 5350 3200
Wire Wire Line
	5350 4700 5350 5050
$Comp
L power:GND #PWR?
U 1 1 613D4EE3
P 4750 1700
AR Path="/60F8AD1A/613D4EE3" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/613D4EE3" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 4750 1450 50  0001 C CNN
F 1 "GND" H 4755 1527 50  0000 C CNN
F 2 "" H 4750 1700 50  0001 C CNN
F 3 "" H 4750 1700 50  0001 C CNN
	1    4750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3550 2850 3550
Connection ~ 2500 3550
Wire Wire Line
	2500 3050 2850 3050
$Comp
L pspice:C C?
U 1 1 613D4EEC
P 2500 3300
AR Path="/60F8AD1A/613D4EEC" Ref="C?"  Part="1" 
AR Path="/610A7369/613D4EEC" Ref="C15"  Part="1" 
F 0 "C15" H 2678 3346 50  0000 L CNN
F 1 "10uF" H 2678 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 2500 3300 50  0001 C CNN
F 3 "~" H 2500 3300 50  0001 C CNN
	1    2500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3550 2500 3550
Wire Wire Line
	2150 2200 2150 3550
Connection ~ 2500 3050
$Comp
L SamacSys_Parts:09661127601 J?
U 1 1 613D4EFC
P 5500 7400
AR Path="/60F8AD1A/613D4EFC" Ref="J?"  Part="1" 
AR Path="/610A7369/613D4EFC" Ref="J5"  Part="1" 
F 0 "J5" H 6544 7446 50  0000 L CNN
F 1 "09661127601" H 6544 7355 50  0000 L CNN
F 2 "SamacSys_Parts:09661126600" H 6350 7700 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/1603060P" H 6350 7600 50  0001 L CNN
F 4 "Harting 2.74mm Pitch 9 Way Right Angle Through Hole Mount PCB D-sub Connector, Socket, with M3 Threaded Inserts" H 6350 7500 50  0001 L CNN "Description"
F 5 "13.6" H 6350 7400 50  0001 L CNN "Height"
F 6 "1603060P" H 6350 7300 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/1603060P" H 6350 7200 50  0001 L CNN "RS Price/Stock"
F 8 "HARTING" H 6350 7100 50  0001 L CNN "Manufacturer_Name"
F 9 "09661127601" H 6350 7000 50  0001 L CNN "Manufacturer_Part_Number"
	1    5500 7400
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:09661127601 J?
U 1 1 613D4F08
P 9700 3050
AR Path="/60F8AD1A/613D4F08" Ref="J?"  Part="1" 
AR Path="/610A7369/613D4F08" Ref="J6"  Part="1" 
F 0 "J6" H 10744 3096 50  0000 L CNN
F 1 "09661127601" H 10744 3005 50  0000 L CNN
F 2 "SamacSys_Parts:09661126600" H 10550 3350 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/1603060P" H 10550 3250 50  0001 L CNN
F 4 "Harting 2.74mm Pitch 9 Way Right Angle Through Hole Mount PCB D-sub Connector, Socket, with M3 Threaded Inserts" H 10550 3150 50  0001 L CNN "Description"
F 5 "13.6" H 10550 3050 50  0001 L CNN "Height"
F 6 "1603060P" H 10550 2950 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/1603060P" H 10550 2850 50  0001 L CNN "RS Price/Stock"
F 8 "HARTING" H 10550 2750 50  0001 L CNN "Manufacturer_Name"
F 9 "09661127601" H 10550 2650 50  0001 L CNN "Manufacturer_Part_Number"
	1    9700 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 2750 10200 2950
Wire Wire Line
	10200 2550 10200 2650
Connection ~ 10200 2750
Connection ~ 10200 2650
Wire Wire Line
	10200 2650 10200 2750
NoConn ~ 5000 7100
NoConn ~ 5000 7000
NoConn ~ 5000 6900
NoConn ~ 6000 7100
NoConn ~ 6000 7000
NoConn ~ 6000 6900
NoConn ~ 6000 6800
Wire Wire Line
	1350 1400 2500 1400
Wire Wire Line
	1200 1300 2500 1300
Wire Wire Line
	1250 1500 1900 1500
Connection ~ 1900 1500
Wire Wire Line
	2700 6300 2700 6700
Wire Wire Line
	1900 800  1900 1500
Wire Wire Line
	2500 2300 2500 2500
Wire Wire Line
	2500 2500 3450 2500
Wire Wire Line
	3450 2500 3450 6300
Wire Wire Line
	1250 1500 1250 4700
Text GLabel 4200 2300 2    50   Input ~ 0
ADC2.1
Text GLabel 4200 2200 2    50   Input ~ 0
ADC2.2
Text GLabel 4200 2100 2    50   Input ~ 0
ADC2.3
Text GLabel 4200 2000 2    50   Input ~ 0
ADC2.4
Text GLabel 4200 1900 2    50   Input ~ 0
ADC2.5
Text GLabel 4200 1800 2    50   Input ~ 0
ADC2.6
Wire Wire Line
	2500 2100 2500 2000
$Comp
L SamacSys_Parts:ADS8332IBPWR IC?
U 1 1 613D4F20
P 4200 2300
AR Path="/60F8AD1A/613D4F20" Ref="IC?"  Part="1" 
AR Path="/610A7369/613D4F20" Ref="IC5"  Part="1" 
F 0 "IC5" H 5050 935 50  0000 C CNN
F 1 "ADS8332IBPWR" H 5050 1026 50  0000 C CNN
F 2 "SamacSys_Parts:SOP65P640X120-24N" H 5750 2400 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/ads8332" H 5750 2300 50  0001 L CNN
F 4 "2.7V-to-5.5V, 16-Bit, 500kSPS Low-Power Serial ADC With 8-Ch Multiplexer and Breakout" H 5750 2200 50  0001 L CNN "Description"
F 5 "1.2" H 5750 2100 50  0001 L CNN "Height"
F 6 "" H 5750 2000 50  0001 L CNN "RS Part Number"
F 7 "" H 5750 1900 50  0001 L CNN "RS Price/Stock"
F 8 "Texas Instruments" H 5750 1800 50  0001 L CNN "Manufacturer_Name"
F 9 "ADS8332IBPWR" H 5750 1700 50  0001 L CNN "Manufacturer_Part_Number"
	1    4200 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 1700 4750 1700
Text GLabel 8750 5550 0    50   Input ~ 0
ADC2.1
Text GLabel 7850 5500 0    50   Input ~ 0
ADC2.2
Text GLabel 6950 5450 0    50   Input ~ 0
ADC2.3
Text GLabel 6050 5400 0    50   Input ~ 0
ADC2.4
Text GLabel 5150 5350 0    50   Input ~ 0
ADC2.5
Text GLabel 9650 5600 0    50   Input ~ 0
ADC2.6
$Comp
L SamacSys_Parts:ESD12VD3B-TP D?
U 1 1 611348D3
P 5850 4100
AR Path="/60F8AD1A/611348D3" Ref="D?"  Part="1" 
AR Path="/610A7369/611348D3" Ref="D10"  Part="1" 
F 0 "D10" H 6300 4365 50  0000 C CNN
F 1 "ESD12VD3B-TP" H 6300 4274 50  0000 C CNN
F 2 "SOD2512X115N" H 6450 4250 50  0001 L BNN
F 3 "http://www.mccsemi.com/up_pdf/ESD12VD3B(SOD-323).pdf" H 6450 4150 50  0001 L BNN
F 4 "ESD Suppressor TVS 12V 2-Pin SOD-323 T/R" H 6450 4050 50  0001 L BNN "Description"
F 5 "1.15" H 6450 3950 50  0001 L BNN "Height"
F 6 "" H 6450 3850 50  0001 L BNN "RS Part Number"
F 7 "" H 6450 3750 50  0001 L BNN "RS Price/Stock"
F 8 "Micro Commercial Components (MCC)" H 6450 3650 50  0001 L BNN "Manufacturer_Name"
F 9 "ESD12VD3B-TP" H 6450 3550 50  0001 L BNN "Manufacturer_Part_Number"
	1    5850 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611348D9
P 5850 4100
AR Path="/60F8AD1A/611348D9" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/611348D9" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 5850 3850 50  0001 C CNN
F 1 "GND" H 5855 3927 50  0000 C CNN
F 2 "" H 5850 4100 50  0001 C CNN
F 3 "" H 5850 4100 50  0001 C CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ESD12VD3B-TP D?
U 1 1 6113AA6B
P 6750 4100
AR Path="/60F8AD1A/6113AA6B" Ref="D?"  Part="1" 
AR Path="/610A7369/6113AA6B" Ref="D11"  Part="1" 
F 0 "D11" H 7200 4365 50  0000 C CNN
F 1 "ESD12VD3B-TP" H 7200 4274 50  0000 C CNN
F 2 "SOD2512X115N" H 7350 4250 50  0001 L BNN
F 3 "http://www.mccsemi.com/up_pdf/ESD12VD3B(SOD-323).pdf" H 7350 4150 50  0001 L BNN
F 4 "ESD Suppressor TVS 12V 2-Pin SOD-323 T/R" H 7350 4050 50  0001 L BNN "Description"
F 5 "1.15" H 7350 3950 50  0001 L BNN "Height"
F 6 "" H 7350 3850 50  0001 L BNN "RS Part Number"
F 7 "" H 7350 3750 50  0001 L BNN "RS Price/Stock"
F 8 "Micro Commercial Components (MCC)" H 7350 3650 50  0001 L BNN "Manufacturer_Name"
F 9 "ESD12VD3B-TP" H 7350 3550 50  0001 L BNN "Manufacturer_Part_Number"
	1    6750 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6113AA71
P 6750 4100
AR Path="/60F8AD1A/6113AA71" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/6113AA71" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 6750 3850 50  0001 C CNN
F 1 "GND" H 6755 3927 50  0000 C CNN
F 2 "" H 6750 4100 50  0001 C CNN
F 3 "" H 6750 4100 50  0001 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ESD12VD3B-TP D?
U 1 1 6114095F
P 7650 4100
AR Path="/60F8AD1A/6114095F" Ref="D?"  Part="1" 
AR Path="/610A7369/6114095F" Ref="D12"  Part="1" 
F 0 "D12" H 8100 4365 50  0000 C CNN
F 1 "ESD12VD3B-TP" H 8100 4274 50  0000 C CNN
F 2 "SOD2512X115N" H 8250 4250 50  0001 L BNN
F 3 "http://www.mccsemi.com/up_pdf/ESD12VD3B(SOD-323).pdf" H 8250 4150 50  0001 L BNN
F 4 "ESD Suppressor TVS 12V 2-Pin SOD-323 T/R" H 8250 4050 50  0001 L BNN "Description"
F 5 "1.15" H 8250 3950 50  0001 L BNN "Height"
F 6 "" H 8250 3850 50  0001 L BNN "RS Part Number"
F 7 "" H 8250 3750 50  0001 L BNN "RS Price/Stock"
F 8 "Micro Commercial Components (MCC)" H 8250 3650 50  0001 L BNN "Manufacturer_Name"
F 9 "ESD12VD3B-TP" H 8250 3550 50  0001 L BNN "Manufacturer_Part_Number"
	1    7650 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61140965
P 7650 4100
AR Path="/60F8AD1A/61140965" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/61140965" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 7650 3850 50  0001 C CNN
F 1 "GND" H 7655 3927 50  0000 C CNN
F 2 "" H 7650 4100 50  0001 C CNN
F 3 "" H 7650 4100 50  0001 C CNN
	1    7650 4100
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ESD12VD3B-TP D?
U 1 1 6114662D
P 8550 4100
AR Path="/60F8AD1A/6114662D" Ref="D?"  Part="1" 
AR Path="/610A7369/6114662D" Ref="D13"  Part="1" 
F 0 "D13" H 9000 4365 50  0000 C CNN
F 1 "ESD12VD3B-TP" H 9000 4274 50  0000 C CNN
F 2 "SOD2512X115N" H 9150 4250 50  0001 L BNN
F 3 "http://www.mccsemi.com/up_pdf/ESD12VD3B(SOD-323).pdf" H 9150 4150 50  0001 L BNN
F 4 "ESD Suppressor TVS 12V 2-Pin SOD-323 T/R" H 9150 4050 50  0001 L BNN "Description"
F 5 "1.15" H 9150 3950 50  0001 L BNN "Height"
F 6 "" H 9150 3850 50  0001 L BNN "RS Part Number"
F 7 "" H 9150 3750 50  0001 L BNN "RS Price/Stock"
F 8 "Micro Commercial Components (MCC)" H 9150 3650 50  0001 L BNN "Manufacturer_Name"
F 9 "ESD12VD3B-TP" H 9150 3550 50  0001 L BNN "Manufacturer_Part_Number"
	1    8550 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61146633
P 8550 4100
AR Path="/60F8AD1A/61146633" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/61146633" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 8550 3850 50  0001 C CNN
F 1 "GND" H 8555 3927 50  0000 C CNN
F 2 "" H 8550 4100 50  0001 C CNN
F 3 "" H 8550 4100 50  0001 C CNN
	1    8550 4100
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ESD12VD3B-TP D?
U 1 1 6114C29D
P 9450 4100
AR Path="/60F8AD1A/6114C29D" Ref="D?"  Part="1" 
AR Path="/610A7369/6114C29D" Ref="D14"  Part="1" 
F 0 "D14" H 9900 4365 50  0000 C CNN
F 1 "ESD12VD3B-TP" H 9900 4274 50  0000 C CNN
F 2 "SOD2512X115N" H 10050 4250 50  0001 L BNN
F 3 "http://www.mccsemi.com/up_pdf/ESD12VD3B(SOD-323).pdf" H 10050 4150 50  0001 L BNN
F 4 "ESD Suppressor TVS 12V 2-Pin SOD-323 T/R" H 10050 4050 50  0001 L BNN "Description"
F 5 "1.15" H 10050 3950 50  0001 L BNN "Height"
F 6 "" H 10050 3850 50  0001 L BNN "RS Part Number"
F 7 "" H 10050 3750 50  0001 L BNN "RS Price/Stock"
F 8 "Micro Commercial Components (MCC)" H 10050 3650 50  0001 L BNN "Manufacturer_Name"
F 9 "ESD12VD3B-TP" H 10050 3550 50  0001 L BNN "Manufacturer_Part_Number"
	1    9450 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6114C2A3
P 9450 4100
AR Path="/60F8AD1A/6114C2A3" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/6114C2A3" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 9450 3850 50  0001 C CNN
F 1 "GND" H 9455 3927 50  0000 C CNN
F 2 "" H 9450 4100 50  0001 C CNN
F 3 "" H 9450 4100 50  0001 C CNN
	1    9450 4100
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ESD12VD3B-TP D?
U 1 1 6115266D
P 5000 4100
AR Path="/60F8AD1A/6115266D" Ref="D?"  Part="1" 
AR Path="/610A7369/6115266D" Ref="D9"  Part="1" 
F 0 "D9" H 5450 4365 50  0000 C CNN
F 1 "ESD12VD3B-TP" H 5450 4274 50  0000 C CNN
F 2 "SOD2512X115N" H 5600 4250 50  0001 L BNN
F 3 "http://www.mccsemi.com/up_pdf/ESD12VD3B(SOD-323).pdf" H 5600 4150 50  0001 L BNN
F 4 "ESD Suppressor TVS 12V 2-Pin SOD-323 T/R" H 5600 4050 50  0001 L BNN "Description"
F 5 "1.15" H 5600 3950 50  0001 L BNN "Height"
F 6 "" H 5600 3850 50  0001 L BNN "RS Part Number"
F 7 "" H 5600 3750 50  0001 L BNN "RS Price/Stock"
F 8 "Micro Commercial Components (MCC)" H 5600 3650 50  0001 L BNN "Manufacturer_Name"
F 9 "ESD12VD3B-TP" H 5600 3550 50  0001 L BNN "Manufacturer_Part_Number"
	1    5000 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61152673
P 5000 4100
AR Path="/60F8AD1A/61152673" Ref="#PWR?"  Part="1" 
AR Path="/610A7369/61152673" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 5000 3850 50  0001 C CNN
F 1 "GND" H 5005 3927 50  0000 C CNN
F 2 "" H 5000 4100 50  0001 C CNN
F 3 "" H 5000 4100 50  0001 C CNN
	1    5000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3200 5350 3200
Connection ~ 5350 3200
Wire Wire Line
	5350 3200 5350 3900
Wire Wire Line
	5850 3200 6250 3200
Connection ~ 6250 3200
Wire Wire Line
	6250 3200 6250 3900
Wire Wire Line
	6750 3200 7150 3200
Connection ~ 7150 3200
Wire Wire Line
	7150 3200 7150 3900
Wire Wire Line
	7650 3200 8050 3200
Connection ~ 8050 3200
Wire Wire Line
	8050 3200 8050 3900
Wire Wire Line
	8550 3200 8950 3200
Connection ~ 8950 3200
Wire Wire Line
	8950 3200 8950 3900
Wire Wire Line
	9450 3200 10600 3200
Connection ~ 10600 3200
Wire Wire Line
	10600 3200 10600 3750
$Comp
L SamacSys_Parts:ESD12VD3B-TP D?
U 1 1 61179198
P 4300 7200
AR Path="/60F8AD1A/61179198" Ref="D?"  Part="1" 
AR Path="/610A7369/61179198" Ref="D8"  Part="1" 
F 0 "D8" H 4750 7465 50  0000 C CNN
F 1 "ESD12VD3B-TP" H 4750 7374 50  0000 C CNN
F 2 "SOD2512X115N" H 4900 7350 50  0001 L BNN
F 3 "http://www.mccsemi.com/up_pdf/ESD12VD3B(SOD-323).pdf" H 4900 7250 50  0001 L BNN
F 4 "ESD Suppressor TVS 12V 2-Pin SOD-323 T/R" H 4900 7150 50  0001 L BNN "Description"
F 5 "1.15" H 4900 7050 50  0001 L BNN "Height"
F 6 "" H 4900 6950 50  0001 L BNN "RS Part Number"
F 7 "" H 4900 6850 50  0001 L BNN "RS Price/Stock"
F 8 "Micro Commercial Components (MCC)" H 4900 6750 50  0001 L BNN "Manufacturer_Name"
F 9 "ESD12VD3B-TP" H 4900 6650 50  0001 L BNN "Manufacturer_Part_Number"
	1    4300 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 6300 4300 6300
Connection ~ 4300 6300
Wire Wire Line
	4300 6300 4800 6300
Wire Wire Line
	2700 6700 2700 7200
Wire Wire Line
	2700 7200 3500 7200
Connection ~ 2700 6700
Connection ~ 3500 7200
Wire Wire Line
	3500 7200 4300 7200
$Comp
L pspice:C C?
U 1 1 61317D61
P 2000 1950
AR Path="/60F8AD1A/61317D61" Ref="C?"  Part="1" 
AR Path="/610A7369/61317D61" Ref="C28"  Part="1" 
F 0 "C28" H 2178 1996 50  0000 L CNN
F 1 "22uF" H 2178 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 2000 1950 50  0001 C CNN
F 3 "~" H 2000 1950 50  0001 C CNN
	1    2000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2200 2000 2200
Connection ~ 2150 2200
Wire Wire Line
	1850 1700 2000 1700
Connection ~ 2000 1700
Wire Wire Line
	2000 1700 2500 1700
Wire Wire Line
	1450 1600 2500 1600
Wire Wire Line
	1450 3050 2500 3050
Text GLabel 4500 1500 2    50   Input ~ 0
EOC2
Wire Wire Line
	4200 1500 4500 1500
$Comp
L Device:R R?
U 1 1 611C10E4
P 5000 1250
AR Path="/60F8AD1A/611C10E4" Ref="R?"  Part="1" 
AR Path="/610A7369/611C10E4" Ref="R32"  Part="1" 
F 0 "R32" H 5070 1296 50  0000 L CNN
F 1 "1k" H 5070 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 4930 1250 50  0001 C CNN
F 3 "~" H 5000 1250 50  0001 C CNN
	1    5000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1600 5000 1400
Wire Wire Line
	4200 1600 5000 1600
Wire Wire Line
	5000 1100 5000 800 
Wire Wire Line
	1900 800  5000 800 
$EndSCHEMATC
