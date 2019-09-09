EESchema Schematic File Version 4
LIBS:esp8266-anemometer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L esp8266-anemometer-rescue:ESP-12E-RF_Module U2
U 1 1 5BCE3305
P 5350 3550
F 0 "U2" H 5600 4450 50  0000 C CNN
F 1 "ESP-12E" H 5600 4350 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 5350 3550 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 5000 3650 50  0001 C CNN
	1    5350 3550
	1    0    0    -1  
$EndComp
Text Notes 9200 3100 0    50   ~ 0
Red 8V
Text Notes 9200 2700 0    50   ~ 0
Screen GND
Text Notes 9200 2900 0    50   ~ 0
Blue sine signal -  3v - 5v // 2v - 6v
Text Notes 9200 3000 0    50   ~ 0
Green   cos signal 3v - 5v // 2v - 6v
Text Notes 9200 2800 0    50   ~ 0
yellow  speed 8v - 3.2v
$Comp
L Device:R R5
U 1 1 5BCE3823
P 8200 3750
F 0 "R5" H 8270 3796 50  0000 L CNN
F 1 "470" H 8270 3705 50  0000 L CNN
F 2 "MyPads:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8130 3750 50  0001 C CNN
F 3 "~" H 8200 3750 50  0001 C CNN
	1    8200 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5BCE38DE
P 8450 3750
F 0 "R7" H 8520 3796 50  0000 L CNN
F 1 "470" H 8520 3705 50  0000 L CNN
F 2 "MyPads:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8380 3750 50  0001 C CNN
F 3 "~" H 8450 3750 50  0001 C CNN
	1    8450 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BCE3976
P 7950 2400
F 0 "R2" H 8020 2446 50  0000 L CNN
F 1 "10k" H 8020 2355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" V 7880 2400 50  0001 C CNN
F 3 "~" H 7950 2400 50  0001 C CNN
	1    7950 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BCE39C9
P 8200 3350
F 0 "R4" H 8270 3396 50  0000 L CNN
F 1 "3.9k" H 8270 3305 50  0000 L CNN
F 2 "MyPads:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8130 3350 50  0001 C CNN
F 3 "~" H 8200 3350 50  0001 C CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BCE3A16
P 8450 3350
F 0 "R6" H 8520 3396 50  0000 L CNN
F 1 "3.9k" H 8520 3305 50  0000 L CNN
F 2 "MyPads:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8380 3350 50  0001 C CNN
F 3 "~" H 8450 3350 50  0001 C CNN
	1    8450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3600 8200 3550
Wire Wire Line
	8450 3600 8450 3500
Wire Wire Line
	8450 4050 8450 3900
Wire Wire Line
	8200 3900 8200 4050
Connection ~ 8200 4050
Wire Wire Line
	8200 4050 8450 4050
$Comp
L power:GND #PWR07
U 1 1 5BCE3E98
P 8200 4200
F 0 "#PWR07" H 8200 3950 50  0001 C CNN
F 1 "GND" H 8205 4027 50  0000 C CNN
F 2 "" H 8200 4200 50  0001 C CNN
F 3 "" H 8200 4200 50  0001 C CNN
	1    8200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4200 8200 4050
$Comp
L power:GND #PWR08
U 1 1 5BCE3FDC
P 8550 2400
F 0 "#PWR08" H 8550 2150 50  0001 C CNN
F 1 "GND" H 8555 2227 50  0000 C CNN
F 2 "" H 8550 2400 50  0001 C CNN
F 3 "" H 8550 2400 50  0001 C CNN
	1    8550 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5BCE4122
P 5350 4450
F 0 "#PWR06" H 5350 4200 50  0001 C CNN
F 1 "GND" H 5355 4277 50  0000 C CNN
F 2 "" H 5350 4450 50  0001 C CNN
F 3 "" H 5350 4450 50  0001 C CNN
	1    5350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4450 5350 4300
$Comp
L power:GND #PWR01
U 1 1 5BCE44E4
P 1550 2150
F 0 "#PWR01" H 1550 1900 50  0001 C CNN
F 1 "GND" H 1555 1977 50  0000 C CNN
F 2 "" H 1550 2150 50  0001 C CNN
F 3 "" H 1550 2150 50  0001 C CNN
	1    1550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1300 1550 1300
$Comp
L Analog_Switch:ADG733BRU U3
U 1 1 5BCE47BE
P 8500 1250
F 0 "U3" H 8500 1492 50  0000 C CNN
F 1 "ADG733BRU" H 8500 1401 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 8500 1250 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG733_734.pdf" H 8500 1250 50  0001 C CNN
	1    8500 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8200 3550 8300 3550
Wire Wire Line
	8300 3550 8300 3600
Connection ~ 8200 3550
Wire Wire Line
	8200 3550 8200 3500
Wire Wire Line
	8300 3600 8850 3600
Wire Wire Line
	4750 3350 4500 3350
Text Label 4550 3350 0    50   ~ 0
B14
$Comp
L Device:C C2
U 1 1 5BCEC21F
P 3200 1450
F 0 "C2" H 3315 1496 50  0000 L CNN
F 1 "0.1u" H 3315 1405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3238 1300 50  0001 C CNN
F 3 "~" H 3200 1450 50  0001 C CNN
	1    3200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1300 3200 1200
Wire Wire Line
	3200 1200 3000 1200
Connection ~ 1550 2000
Wire Wire Line
	1550 2000 1550 2150
Wire Wire Line
	1400 1200 1750 1200
$Comp
L power:+12V #PWR02
U 1 1 5BCEF612
P 1750 1100
F 0 "#PWR02" H 1750 950 50  0001 C CNN
F 1 "+12V" H 1765 1273 50  0000 C CNN
F 2 "" H 1750 1100 50  0001 C CNN
F 3 "" H 1750 1100 50  0001 C CNN
	1    1750 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1100 1750 1200
Connection ~ 1750 1200
Connection ~ 3200 1200
$Comp
L power:+8V #PWR03
U 1 1 5BCF0754
P 3200 1100
F 0 "#PWR03" H 3200 950 50  0001 C CNN
F 1 "+8V" H 3215 1273 50  0000 C CNN
F 2 "" H 3200 1100 50  0001 C CNN
F 3 "" H 3200 1100 50  0001 C CNN
	1    3200 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1200 3200 1100
$Comp
L power:+8V #PWR09
U 1 1 5BCF1292
P 8850 2300
F 0 "#PWR09" H 8850 2150 50  0001 C CNN
F 1 "+8V" H 8865 2473 50  0000 C CNN
F 2 "" H 8850 2300 50  0001 C CNN
F 3 "" H 8850 2300 50  0001 C CNN
	1    8850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 5BCF1EF4
P 3550 1200
F 0 "D1" V 3504 1279 50  0000 L CNN
F 1 "3.3" V 3595 1279 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 3550 1200 50  0001 C CNN
F 3 "~" H 3550 1200 50  0001 C CNN
	1    3550 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BCF1FC0
P 5450 1550
F 0 "C3" H 5565 1596 50  0000 L CNN
F 1 "0.1u" H 5565 1505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5488 1400 50  0001 C CNN
F 3 "~" H 5450 1550 50  0001 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1200 3400 1200
Wire Wire Line
	5450 1200 5350 1200
$Comp
L power:+3V3 #PWR04
U 1 1 5BCF60E1
P 5450 1100
F 0 "#PWR04" H 5450 950 50  0001 C CNN
F 1 "+3V3" H 5465 1273 50  0000 C CNN
F 2 "" H 5450 1100 50  0001 C CNN
F 3 "" H 5450 1100 50  0001 C CNN
	1    5450 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 5BCF70C4
P 5350 2300
F 0 "#PWR05" H 5350 2150 50  0001 C CNN
F 1 "+3V3" H 5365 2473 50  0000 C CNN
F 2 "" H 5350 2300 50  0001 C CNN
F 3 "" H 5350 2300 50  0001 C CNN
	1    5350 2300
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:ADG733BRU U3
U 4 1 5BCF9A2D
P 10650 1150
F 0 "U3" H 10980 1196 50  0000 L CNN
F 1 "ADG733BRU" H 10980 1105 50  0000 L CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 10650 1150 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG733_734.pdf" H 10650 1150 50  0001 C CNN
	4    10650 1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 3950 5950 3950
Wire Wire Line
	5950 3550 7200 3550
$Comp
L Device:D_Zener_Small D2
U 1 1 5BD52D0F
P 7200 3850
F 0 "D2" V 7154 3918 50  0000 L CNN
F 1 "3.6v" V 7245 3918 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P5.08mm_Vertical_AnodeUp" V 7200 3850 50  0001 C CNN
F 3 "~" V 7200 3850 50  0001 C CNN
	1    7200 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 3750 7200 3550
Connection ~ 7200 3550
Wire Wire Line
	7200 4050 7200 3950
Wire Wire Line
	3000 1300 3000 1200
Connection ~ 3000 1200
Wire Wire Line
	3000 1200 2950 1200
Wire Wire Line
	3200 1600 3200 2000
Wire Wire Line
	1550 1300 1550 2000
Connection ~ 2650 2000
Wire Wire Line
	2650 2000 3200 2000
Wire Wire Line
	7200 3550 7950 3550
Wire Wire Line
	1750 1200 2050 1200
Connection ~ 3200 2000
$Comp
L Analog_Switch:ADG733BRU U4
U 1 1 5BE376E0
P 2250 4550
F 0 "U4" H 2250 4792 50  0000 C CNN
F 1 "ADG733BRU" H 2250 4701 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 2250 4550 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG733_734.pdf" H 2250 4550 50  0001 C CNN
	1    2250 4550
	-1   0    0    -1  
$EndComp
$Comp
L Analog_Switch:ADG733BRU U4
U 2 1 5BE3786E
P 2250 3050
F 0 "U4" H 2250 3292 50  0000 C CNN
F 1 "ADG733BRU" H 2250 3201 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 2250 3050 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG733_734.pdf" H 2250 3050 50  0001 C CNN
	2    2250 3050
	-1   0    0    -1  
$EndComp
$Comp
L Analog_Switch:ADG733BRU U4
U 3 1 5BE37912
P 2250 3800
F 0 "U4" H 2250 4042 50  0000 C CNN
F 1 "ADG733BRU" H 2250 3951 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 2250 3800 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG733_734.pdf" H 2250 3800 50  0001 C CNN
	3    2250 3800
	-1   0    0    -1  
$EndComp
$Comp
L Analog_Switch:ADG733BRU U4
U 4 1 5BE379A4
P 3450 4150
F 0 "U4" H 3450 4392 50  0000 C CNN
F 1 "ADG733BRU" H 3450 4301 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 3450 4150 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG733_734.pdf" H 3450 4150 50  0001 C CNN
	4    3450 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	800  2750 600  2750
Wire Wire Line
	800  2850 600  2850
Wire Wire Line
	800  2950 600  2950
Wire Wire Line
	800  3050 600  3050
Wire Wire Line
	1300 2750 1500 2750
Wire Wire Line
	1300 2850 1500 2850
Wire Wire Line
	1300 2950 1500 2950
Wire Wire Line
	1300 3050 1500 3050
Wire Wire Line
	800  3650 600  3650
Wire Wire Line
	800  3750 600  3750
Wire Wire Line
	800  3850 600  3850
Wire Wire Line
	800  3950 600  3950
Wire Wire Line
	1300 3650 1550 3650
Wire Wire Line
	1300 3750 1550 3750
Wire Wire Line
	1300 3850 1550 3850
Wire Wire Line
	1300 3950 1550 3950
Wire Wire Line
	1950 3050 1700 3050
Wire Wire Line
	1950 3250 1700 3250
Wire Wire Line
	1700 3800 1950 3800
Wire Wire Line
	1950 4000 1700 4000
Wire Wire Line
	2550 3900 2750 3900
Wire Wire Line
	2550 3150 2750 3150
Wire Wire Line
	1700 3500 2250 3500
Wire Wire Line
	2250 3500 2250 3450
Wire Wire Line
	2250 4250 2250 4200
Wire Wire Line
	1700 4250 2250 4250
Wire Wire Line
	1950 4550 1750 4550
Wire Wire Line
	1950 4750 1750 4750
Wire Wire Line
	3450 3650 3450 3600
Wire Wire Line
	3450 3600 2950 3600
Wire Wire Line
	2250 4950 1750 4950
Wire Wire Line
	2550 4650 2750 4650
Wire Wire Line
	3750 4150 3900 4150
Text Label 650  2750 0    50   ~ 0
A1
Text Label 1350 2750 0    50   ~ 0
A2
Text Label 650  2850 0    50   ~ 0
A3
Text Label 1350 2850 0    50   ~ 0
A4
Text Label 650  2950 0    50   ~ 0
A5
Text Label 1350 2950 0    50   ~ 0
A6
Text Label 650  3050 0    50   ~ 0
A7
Text Label 1350 3050 0    50   ~ 0
A8
Text Label 650  3950 0    50   ~ 0
A9
Text Label 1350 3950 0    50   ~ 0
A10
Text Label 650  3850 0    50   ~ 0
A11
Text Label 1350 3850 0    50   ~ 0
A12
Text Label 650  3750 0    50   ~ 0
A13
Text Label 1350 3750 0    50   ~ 0
A14
Text Label 650  3650 0    50   ~ 0
A15
Text Label 1350 3650 0    50   ~ 0
A16
Text Label 3000 3600 0    50   ~ 0
A16
Text Label 2600 4650 0    50   ~ 0
A14
Text Label 1750 4550 0    50   ~ 0
A12
Text Label 1750 4750 0    50   ~ 0
A13
Text Label 1750 3250 0    50   ~ 0
A1
Text Label 1750 3050 0    50   ~ 0
A2
Text Label 1750 3500 0    50   ~ 0
A10
Text Label 1750 3800 0    50   ~ 0
A5
Text Label 1750 4000 0    50   ~ 0
A3
Text Label 1750 4250 0    50   ~ 0
A9
Text Label 3350 4900 1    50   ~ 0
A8
Text Label 3450 4900 1    50   ~ 0
A7
Text Label 3900 4150 0    50   ~ 0
A6
Text Label 1800 4950 0    50   ~ 0
A11
Text Label 2600 3900 0    50   ~ 0
A4
Text Label 2600 3150 0    50   ~ 0
A15
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J3
U 1 1 5BEABE1F
P 1000 2850
F 0 "J3" H 1050 3167 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 1050 3076 50  0000 C CNN
F 2 "MyPads:PinHeader_2x04_P2.54mm_Vertical" H 1000 2850 50  0001 C CNN
F 3 "~" H 1000 2850 50  0001 C CNN
	1    1000 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J4
U 1 1 5BEAC076
P 1000 3750
F 0 "J4" H 1050 4067 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 1050 3976 50  0000 C CNN
F 2 "MyPads:PinHeader_2x04_P2.54mm_Vertical" H 1000 3750 50  0001 C CNN
F 3 "~" H 1000 3750 50  0001 C CNN
	1    1000 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 5BEAC666
P 7050 3050
F 0 "J5" H 7050 3350 50  0000 C CNN
F 1 "Conn_01x05" H 7100 2750 50  0000 C CNN
F 2 "MyPads:PinHeader_1x05_P2.54mm_Vertical" H 7050 3050 50  0001 C CNN
F 3 "~" H 7050 3050 50  0001 C CNN
	1    7050 3050
	1    0    0    1   
$EndComp
Wire Wire Line
	6850 3350 6700 3350
Wire Wire Line
	6850 3250 6850 3350
$Comp
L power:GND #PWR010
U 1 1 5BEE2B55
P 6700 3400
F 0 "#PWR010" H 6700 3150 50  0001 C CNN
F 1 "GND" H 6705 3227 50  0000 C CNN
F 2 "" H 6700 3400 50  0001 C CNN
F 3 "" H 6700 3400 50  0001 C CNN
	1    6700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3350 6700 3400
$Comp
L Device:R R10
U 1 1 5BEE80A4
P 6100 2600
F 0 "R10" H 6170 2646 50  0000 L CNN
F 1 "10k" H 6170 2555 50  0000 L CNN
F 2 "MyPads:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 2600 50  0001 C CNN
F 3 "~" H 6100 2600 50  0001 C CNN
	1    6100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3150 6100 3150
Wire Wire Line
	6100 2450 6100 2400
$Comp
L Device:R R9
U 1 1 5BEF333A
P 4100 2650
F 0 "R9" H 4170 2696 50  0000 L CNN
F 1 "10k" H 4170 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 4030 2650 50  0001 C CNN
F 3 "~" H 4100 2650 50  0001 C CNN
	1    4100 2650
	1    0    0    -1  
$EndComp
Connection ~ 5350 2400
Wire Wire Line
	5950 3250 6250 3250
Connection ~ 6100 2400
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 5BF3CBBE
P 4100 3400
F 0 "SW1" H 4100 3667 50  0000 C CNN
F 1 "SW_DIP_x01" H 4100 3576 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4100 3400 50  0001 C CNN
F 3 "" H 4100 3400 50  0001 C CNN
	1    4100 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 2950 4100 2800
Wire Wire Line
	4100 2950 4750 2950
$Comp
L Device:R R11
U 1 1 5BF6EFB2
P 6500 2600
F 0 "R11" H 6570 2646 50  0000 L CNN
F 1 "10k" H 6570 2555 50  0000 L CNN
F 2 "MyPads:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 2600 50  0001 C CNN
F 3 "~" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2450 6500 2400
Wire Wire Line
	6100 2400 6500 2400
Wire Wire Line
	5350 2300 5350 2400
Wire Wire Line
	5350 2400 5350 2750
Wire Wire Line
	6100 3150 6100 2750
Wire Wire Line
	6850 2850 6500 2850
Wire Wire Line
	6500 2850 6500 2750
$Comp
L Device:R R12
U 1 1 5BFAA51E
P 6500 3150
F 0 "R12" H 6570 3196 50  0000 L CNN
F 1 "470" H 6570 3105 50  0000 L CNN
F 2 "MyPads:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 3150 50  0001 C CNN
F 3 "~" H 6500 3150 50  0001 C CNN
	1    6500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2950 6500 2950
Wire Wire Line
	6500 2950 6500 3000
Wire Wire Line
	6700 3350 6500 3350
Wire Wire Line
	6500 3350 6500 3300
Connection ~ 6700 3350
Wire Wire Line
	5950 2950 6250 2950
Wire Wire Line
	6250 2950 6250 2850
Wire Wire Line
	6250 2850 6500 2850
Connection ~ 6500 2850
Text Notes 7200 3250 0    59   ~ 0
Programming on\nstartup shunt 1 - 2\nTX\nRX\nGND
Wire Wire Line
	6100 4300 6100 4200
Wire Wire Line
	6100 3850 5950 3850
Connection ~ 5350 4300
Wire Wire Line
	5350 4300 5350 4250
Text Notes 3950 4750 0    50   ~ 0
Programming ..\npush & hold reset\npush & hold program\nrelease reset\nrelease program\nupload code
Connection ~ 5450 1200
Wire Wire Line
	5450 1400 5450 1200
Wire Wire Line
	6250 3050 6850 3050
Wire Wire Line
	6250 3050 6250 3250
Wire Wire Line
	5950 3050 6150 3050
Wire Wire Line
	6150 3050 6150 3150
Wire Wire Line
	6150 3150 6850 3150
NoConn ~ 5950 3350
NoConn ~ 5950 3450
NoConn ~ 5950 3650
NoConn ~ 5950 3750
NoConn ~ 4750 3650
NoConn ~ 4750 3750
NoConn ~ 4750 3850
NoConn ~ 4750 3950
NoConn ~ 4750 4050
Wire Wire Line
	3900 4150 3900 5050
Wire Wire Line
	3900 5050 3450 5050
Connection ~ 3900 4150
Wire Wire Line
	3900 4150 4100 4150
$Comp
L power:GND #PWR0101
U 1 1 5BE52DF6
P 3450 5200
F 0 "#PWR0101" H 3450 4950 50  0001 C CNN
F 1 "GND" H 3455 5027 50  0000 C CNN
F 2 "" H 3450 5200 50  0001 C CNN
F 3 "" H 3450 5200 50  0001 C CNN
	1    3450 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP1
U 1 1 5BE5BE92
P 5050 1200
F 0 "JP1" H 5050 1464 50  0000 C CNN
F 1 "Jumper" H 5050 1373 50  0000 C CNN
F 2 "MyPads:PinHeader_1x02_P2.54mm_Vertical" H 5050 1200 50  0001 C CNN
F 3 "~" H 5050 1200 50  0001 C CNN
	1    5050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3150 4600 3150
Wire Wire Line
	4600 3150 4600 2850
Connection ~ 4600 2400
Wire Wire Line
	4600 2400 5350 2400
NoConn ~ 4750 3550
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5BE81C8F
P 2050 1200
F 0 "#FLG0101" H 2050 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 1374 50  0000 C CNN
F 2 "" H 2050 1200 50  0001 C CNN
F 3 "~" H 2050 1200 50  0001 C CNN
	1    2050 1200
	1    0    0    -1  
$EndComp
Connection ~ 2050 1200
Wire Wire Line
	2050 1200 2350 1200
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5BE823DE
P 1500 4200
F 0 "#FLG0103" H 1500 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 4374 50  0000 C CNN
F 2 "" H 1500 4200 50  0001 C CNN
F 3 "~" H 1500 4200 50  0001 C CNN
	1    1500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2400 6100 2400
Wire Wire Line
	5350 4300 6100 4300
$Comp
L Regulator_Linear:LM1117-3.3 U5
U 1 1 5BE8C904
P 4150 1200
F 0 "U5" H 4150 1442 50  0000 C CNN
F 1 "LM1117-3.3" H 4150 1351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4150 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 4150 1200 50  0001 C CNN
	1    4150 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1200 3700 1200
Wire Wire Line
	3200 2000 4150 2000
Wire Wire Line
	4150 1500 4150 2000
Connection ~ 4150 2000
Wire Wire Line
	5450 1700 5450 2000
Wire Wire Line
	4150 2000 5450 2000
Wire Wire Line
	4450 1200 4750 1200
Wire Wire Line
	7200 4050 8200 4050
$Comp
L power:+3V3 #PWR0103
U 1 1 5C1639B3
P 7950 2150
F 0 "#PWR0103" H 7950 2000 50  0001 C CNN
F 1 "+3V3" H 7965 2323 50  0000 C CNN
F 2 "" H 7950 2150 50  0001 C CNN
F 3 "" H 7950 2150 50  0001 C CNN
	1    7950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2250 7950 2150
$Comp
L Regulator_Linear:L7808 U1
U 1 1 5C194147
P 2650 1200
F 0 "U1" H 2650 1442 50  0000 C CNN
F 1 "L7808" H 2650 1351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2675 1050 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2650 1150 50  0001 C CNN
	1    2650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1500 2650 2000
$Comp
L power:GND #PWR011
U 1 1 5C19EDF4
P 4100 3800
F 0 "#PWR011" H 4100 3550 50  0001 C CNN
F 1 "GND" H 4105 3627 50  0000 C CNN
F 2 "" H 4100 3800 50  0001 C CNN
F 3 "" H 4100 3800 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3800 4100 3700
Wire Wire Line
	4100 2950 4100 3100
Connection ~ 4100 2950
Wire Wire Line
	4100 2500 4100 2400
Wire Wire Line
	4100 2400 4600 2400
Wire Wire Line
	1550 2000 2650 2000
Text Notes 4150 3150 0    50   ~ 0
Reset
$Comp
L Device:R R1
U 1 1 5C1D023E
P 4600 2700
F 0 "R1" H 4670 2746 50  0000 L CNN
F 1 "10k" H 4670 2655 50  0000 L CNN
F 2 "MyPads:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 2700 50  0001 C CNN
F 3 "~" H 4600 2700 50  0001 C CNN
	1    4600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2550 4600 2400
Text Notes 5750 4400 0    50   ~ 0
Colocar R=10k ?
Text Notes 5700 2500 0    50   ~ 0
Nao necessario ?
Text Notes 6250 3200 0    50   ~ 0
Nao necessario ?
$Comp
L Device:R R3
U 1 1 5C1D14FF
P 6100 4050
F 0 "R3" H 6170 4096 50  0000 L CNN
F 1 "10k" H 6170 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" V 6030 4050 50  0001 C CNN
F 3 "~" H 6100 4050 50  0001 C CNN
	1    6100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3900 6100 3850
Connection ~ 3450 5050
Wire Wire Line
	3450 5050 3350 5050
Wire Wire Line
	3450 4650 3450 5050
Wire Wire Line
	3350 4650 3350 5050
Wire Wire Line
	3450 5050 3450 5200
Wire Wire Line
	7950 2550 7950 2700
Wire Wire Line
	8850 2700 7950 2700
Connection ~ 7950 2700
Wire Wire Line
	7950 2700 7950 3550
Wire Wire Line
	8850 2800 8200 2800
Wire Wire Line
	8200 2800 8200 3200
Wire Wire Line
	8850 2900 8450 2900
Wire Wire Line
	8450 2900 8450 3200
Wire Wire Line
	8700 2400 8700 2600
Wire Wire Line
	8700 2400 8550 2400
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C22802A
P 1200 1300
F 0 "J1" H 1120 975 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1120 1066 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1200 1300 50  0001 C CNN
F 3 "~" H 1200 1300 50  0001 C CNN
	1    1200 1300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x05 J2
U 1 1 5C228116
P 9050 2700
F 0 "J2" H 9050 3150 50  0000 L CNN
F 1 "Screw_Terminal_01x05" H 8950 3050 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-5_P5.08mm" H 9050 2700 50  0001 C CNN
F 3 "~" H 9050 2700 50  0001 C CNN
	1    9050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1650 8500 1800
Wire Wire Line
	8500 1800 9350 1800
Wire Wire Line
	8200 1250 8050 1250
Wire Wire Line
	8050 1250 8050 900 
Wire Wire Line
	8050 900  9000 900 
Wire Wire Line
	9000 900  9000 1700
Wire Wire Line
	9000 1700 9350 1700
Wire Wire Line
	8200 1450 8000 1450
Wire Wire Line
	8000 1450 8000 850 
Wire Wire Line
	8000 850  9050 850 
Wire Wire Line
	9050 850  9050 1600
Wire Wire Line
	9050 1600 9350 1600
Wire Wire Line
	8800 1350 8900 1350
Wire Wire Line
	8900 1350 8900 1500
Wire Wire Line
	8900 1500 9350 1500
Wire Wire Line
	10950 1150 11050 1150
Wire Wire Line
	11050 1150 11050 1800
Wire Wire Line
	11050 1800 10650 1800
Wire Wire Line
	10550 1800 10550 1650
Wire Wire Line
	10650 1650 10650 1800
Connection ~ 10650 1800
Wire Wire Line
	10650 1800 10550 1800
Wire Wire Line
	10550 1800 9950 1800
Wire Wire Line
	9950 1800 9950 1000
Wire Wire Line
	9950 1000 9300 1000
Connection ~ 10550 1800
Wire Wire Line
	10650 650  10650 550 
Wire Wire Line
	10650 550  9150 550 
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 5C27A758
P 9550 1500
F 0 "J6" H 9630 1492 50  0000 L CNN
F 1 "Conn_01x06" H 9630 1401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9550 1500 50  0001 C CNN
F 3 "~" H 9550 1500 50  0001 C CNN
	1    9550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1400 9150 1400
Wire Wire Line
	9150 550  9150 1400
Wire Wire Line
	9300 1300 9350 1300
Wire Wire Line
	9300 1000 9300 1300
Text Label 9150 1400 0    50   ~ 0
+3V3
Text Label 9400 1000 0    50   ~ 0
GND
Text Label 9150 1500 0    50   ~ 0
B14
Text Label 9150 1600 0    50   ~ 0
B13
Text Label 9150 1700 0    50   ~ 0
B12
Text Label 9150 1800 0    50   ~ 0
B11
Text Label 8700 3500 0    50   ~ 0
B12
Text Label 8700 3600 0    50   ~ 0
B13
Text Label 6450 3950 0    50   ~ 0
B11
Wire Wire Line
	5450 1200 5450 1100
$Comp
L Connector_Generic:Conn_01x06 J7
U 1 1 5C2A8F9D
P 10150 2200
F 0 "J7" H 10230 2192 50  0000 L CNN
F 1 "Conn_01x06" H 10230 2101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10150 2200 50  0001 C CNN
F 3 "~" H 10150 2200 50  0001 C CNN
	1    10150 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2100 9750 2100
Text Label 9750 2100 0    50   ~ 0
+3V3
Text Label 9750 2200 0    50   ~ 0
B14
Text Label 9750 2300 0    50   ~ 0
B13
Text Label 9750 2400 0    50   ~ 0
B12
Text Label 9750 2500 0    50   ~ 0
B11
Wire Wire Line
	9750 2000 9950 2000
Wire Wire Line
	9950 2200 9750 2200
Wire Wire Line
	9950 2300 9750 2300
Wire Wire Line
	9950 2400 9750 2400
Wire Wire Line
	9950 2500 9750 2500
Text Label 9750 2000 0    50   ~ 0
GND
Text Label 8200 2700 0    50   ~ 0
SPEED-Y
Text Label 8250 2800 0    50   ~ 0
COS-B
Text Label 8450 2900 0    50   ~ 0
SIN-G
Wire Wire Line
	8850 2600 8700 2600
Wire Wire Line
	8850 2500 8850 2300
Wire Wire Line
	8450 3500 8850 3500
Connection ~ 8450 3500
Text Notes 9350 3600 0    50   ~ 0
6V - 1.373mA - 0,6453V\n5V - 1.144 mA -  0,5377V\n3V -0,6965mA - 0,3227V\n2V -  0,4576mA - 0,2151V
$EndSCHEMATC
