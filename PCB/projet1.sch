EESchema Schematic File Version 4
EELAYER 30 0
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
L Driver_Motor:L298HN U1
U 1 1 60740330
P 6800 3550
F 0 "U1" H 6800 4431 50  0000 C CNN
F 1 "L298HN" H 6800 4340 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-15_P2.54x2.54mm_StaggerOdd_Lead4.58mm_Vertical" H 6850 2900 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000240.pdf" H 6950 3800 50  0001 C CNN
	1    6800 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6074136E
P 6400 2600
F 0 "C2" V 6148 2600 50  0000 C CNN
F 1 "100n" V 6239 2600 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D6.0mm_P5.00mm" H 6438 2450 50  0001 C CNN
F 3 "~" H 6400 2600 50  0001 C CNN
	1    6400 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60743E3D
P 6800 4650
F 0 "#PWR0101" H 6800 4400 50  0001 C CNN
F 1 "GND" H 6805 4477 50  0000 C CNN
F 2 "" H 6800 4650 50  0001 C CNN
F 3 "" H 6800 4650 50  0001 C CNN
	1    6800 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60745C5C
P 7250 2600
F 0 "C3" V 6998 2600 50  0000 C CNN
F 1 "100n" V 7089 2600 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D6.0mm_P5.00mm" H 7288 2450 50  0001 C CNN
F 3 "~" H 7250 2600 50  0001 C CNN
	1    7250 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 2850 6900 2600
Wire Wire Line
	6900 2600 7100 2600
Wire Wire Line
	6800 2850 6800 2600
Wire Wire Line
	6800 2600 6550 2600
Text GLabel 7100 1850 2    50   Input ~ 0
Alim_puissance
Wire Wire Line
	6300 1850 6800 1850
Wire Wire Line
	6800 1850 6800 2600
Connection ~ 6800 2600
Text GLabel 6300 1850 0    50   Input ~ 0
Alim_logique
Wire Wire Line
	6900 2600 6900 1850
Wire Wire Line
	6900 1850 7100 1850
Connection ~ 6900 2600
$Comp
L power:GND #PWR0102
U 1 1 6074A95E
P 5900 2650
F 0 "#PWR0102" H 5900 2400 50  0001 C CNN
F 1 "GND" H 5905 2477 50  0000 C CNN
F 2 "" H 5900 2650 50  0001 C CNN
F 3 "" H 5900 2650 50  0001 C CNN
	1    5900 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6074AE79
P 7550 2650
F 0 "#PWR0103" H 7550 2400 50  0001 C CNN
F 1 "GND" H 7555 2477 50  0000 C CNN
F 2 "" H 7550 2650 50  0001 C CNN
F 3 "" H 7550 2650 50  0001 C CNN
	1    7550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2600 7550 2600
Wire Wire Line
	7550 2600 7550 2650
Wire Wire Line
	6250 2600 5900 2600
Wire Wire Line
	5900 2600 5900 2650
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 6074D7AA
P 8800 5900
F 0 "J9" H 8880 5892 50  0000 L CNN
F 1 "Alim_puissance" H 8880 5801 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-2-2.54_1x02_P2.54mm_Horizontal" H 8800 5900 50  0001 C CNN
F 3 "~" H 8800 5900 50  0001 C CNN
	1    8800 5900
	-1   0    0    -1  
$EndComp
Text GLabel 9750 5900 2    50   Input ~ 0
Alim_puissance
$Comp
L power:GND #PWR0104
U 1 1 6074FC9F
P 10000 6050
F 0 "#PWR0104" H 10000 5800 50  0001 C CNN
F 1 "GND" H 10005 5877 50  0000 C CNN
F 2 "" H 10000 6050 50  0001 C CNN
F 3 "" H 10000 6050 50  0001 C CNN
	1    10000 6050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10000 6050 10000 6000
Wire Wire Line
	10000 6000 9400 6000
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60752781
P 9400 5700
F 0 "#FLG0101" H 9400 5775 50  0001 C CNN
F 1 "PWR_FLAG" H 9400 5873 50  0000 C CNN
F 2 "" H 9400 5700 50  0001 C CNN
F 3 "~" H 9400 5700 50  0001 C CNN
	1    9400 5700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 5900 9400 5900
Wire Wire Line
	9400 5700 9400 5900
Connection ~ 9400 5900
Wire Wire Line
	9400 5900 9000 5900
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60757DC9
P 9400 6150
F 0 "#FLG0102" H 9400 6225 50  0001 C CNN
F 1 "PWR_FLAG" H 9400 6323 50  0000 C CNN
F 2 "" H 9400 6150 50  0001 C CNN
F 3 "~" H 9400 6150 50  0001 C CNN
	1    9400 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 6150 9400 6000
Connection ~ 9400 6000
Wire Wire Line
	9400 6000 9000 6000
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 60759CB6
P 8200 3350
F 0 "J7" H 8280 3342 50  0000 L CNN
F 1 "sortie_1" H 8280 3251 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-2-2.54_1x02_P2.54mm_Horizontal" H 8200 3350 50  0001 C CNN
F 3 "~" H 8200 3350 50  0001 C CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3350 8000 3350
Wire Wire Line
	7400 3450 8000 3450
Text Label 7650 3450 0    50   ~ 0
s_1+
Text Label 7650 3350 0    50   ~ 0
s_1-
Wire Wire Line
	6500 4450 6500 4250
Wire Wire Line
	6800 4250 6800 4450
Wire Wire Line
	6800 4450 6800 4650
Wire Wire Line
	2600 3550 4500 3550
Wire Wire Line
	4500 3550 4500 3050
Wire Wire Line
	4500 3050 6200 3050
Wire Wire Line
	6200 3150 4600 3150
Wire Wire Line
	4600 3150 4600 3650
Wire Wire Line
	4600 3650 2600 3650
Wire Wire Line
	2600 3750 4700 3750
Wire Wire Line
	4700 3750 4700 3250
Wire Wire Line
	4700 3250 6200 3250
Text GLabel 1950 5250 2    50   Input ~ 0
Alim_logique
Wire Wire Line
	1950 5250 1900 5250
Wire Wire Line
	1900 5250 1900 4850
$Comp
L power:GND #PWR0105
U 1 1 6078D3BA
P 2050 2500
F 0 "#PWR0105" H 2050 2250 50  0001 C CNN
F 1 "GND" H 2055 2327 50  0000 C CNN
F 2 "" H 2050 2500 50  0001 C CNN
F 3 "" H 2050 2500 50  0001 C CNN
	1    2050 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 2650 2050 2650
Wire Wire Line
	2050 2650 2050 2500
Wire Wire Line
	2000 2650 2050 2650
Connection ~ 2050 2650
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 60794274
P 4350 5000
F 0 "J6" H 4378 4976 50  0000 L CNN
F 1 "Thermistance" H 4378 4885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4350 5000 50  0001 C CNN
F 3 "~" H 4350 5000 50  0001 C CNN
	1    4350 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60794A64
P 4150 5600
F 0 "R3" H 4220 5646 50  0000 L CNN
F 1 "10k" H 4220 5555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 5600 50  0001 C CNN
F 3 "~" H 4150 5600 50  0001 C CNN
	1    4150 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60795316
P 4150 6100
F 0 "#PWR0106" H 4150 5850 50  0001 C CNN
F 1 "GND" H 4155 5927 50  0000 C CNN
F 2 "" H 4150 6100 50  0001 C CNN
F 3 "" H 4150 6100 50  0001 C CNN
	1    4150 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5100 4150 5450
Wire Wire Line
	4150 5750 4150 6100
Wire Wire Line
	2000 4850 2000 5000
Wire Wire Line
	2000 5000 4150 5000
Text Label 3050 5000 0    50   ~ 0
alim_thermistance
Text GLabel 3650 5200 0    50   Input ~ 0
thermistance
Wire Wire Line
	3650 5200 3850 5200
Wire Wire Line
	3850 5200 3850 5100
Wire Wire Line
	3850 5100 4150 5100
Connection ~ 4150 5100
Text Label 1600 4200 2    50   ~ 0
entree_thermistance
NoConn ~ 2600 3450
NoConn ~ 2600 3350
NoConn ~ 2600 3850
NoConn ~ 2600 4250
NoConn ~ 2600 4350
NoConn ~ 2600 4450
NoConn ~ 2600 3250
NoConn ~ 1600 3250
NoConn ~ 1600 3550
NoConn ~ 1600 4050
Wire Wire Line
	2100 2850 2100 2650
Wire Wire Line
	2000 2850 2000 2650
Wire Wire Line
	1300 3150 1600 3150
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 607BA1AD
P 1100 3150
F 0 "J1" H 992 3017 50  0000 C CNN
F 1 "A_in_suppl??mentaire" H 992 3016 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 1100 3150 50  0001 C CNN
F 3 "~" H 1100 3150 50  0001 C CNN
	1    1100 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 607C29C9
P 1100 3450
F 0 "J3" H 1150 3400 50  0000 C CNN
F 1 "i2c_scl" H 992 3316 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 1100 3450 50  0001 C CNN
F 3 "~" H 1100 3450 50  0001 C CNN
	1    1100 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 3450 1450 3450
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 607C8088
P 3350 3150
F 0 "J4" H 3378 3176 50  0000 L CNN
F 1 "Sortie_suppl??mentaire" H 3378 3085 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 3350 3150 50  0001 C CNN
F 3 "~" H 3350 3150 50  0001 C CNN
	1    3350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3150 3150 3150
Text Label 2850 3150 0    50   ~ 0
D_out
Text Label 1350 3150 0    50   ~ 0
A_In
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 607C241F
P 1100 3350
F 0 "J2" H 1150 3300 50  0000 C CNN
F 1 "i2c_sda" H 992 3216 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 1100 3350 50  0001 C CNN
F 3 "~" H 1100 3350 50  0001 C CNN
	1    1100 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 3350 1450 3350
$Comp
L Device:R R2
U 1 1 607D8669
P 950 2850
F 0 "R2" H 1020 2896 50  0000 L CNN
F 1 "4.7k" H 1020 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 880 2850 50  0001 C CNN
F 3 "~" H 950 2850 50  0001 C CNN
	1    950  2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 607D8E36
P 700 2850
F 0 "R1" H 770 2896 50  0000 L CNN
F 1 "4.7k" H 770 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 630 2850 50  0001 C CNN
F 3 "~" H 700 2850 50  0001 C CNN
	1    700  2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3350 1450 3250
Wire Wire Line
	1450 3250 950  3250
Wire Wire Line
	950  3250 950  3000
Connection ~ 1450 3350
Wire Wire Line
	1450 3350 1600 3350
Wire Wire Line
	1450 3450 1450 3550
Wire Wire Line
	1450 3550 700  3550
Wire Wire Line
	700  3550 700  3000
Connection ~ 1450 3450
Wire Wire Line
	1450 3450 1600 3450
Wire Wire Line
	950  2700 950  2450
Wire Wire Line
	950  2450 800  2450
Wire Wire Line
	700  2450 700  2700
Text GLabel 900  2250 2    50   Input ~ 0
Alim_logique
Wire Wire Line
	900  2250 800  2250
Wire Wire Line
	800  2250 800  2450
Connection ~ 800  2450
Wire Wire Line
	800  2450 700  2450
Wire Wire Line
	2200 4900 2200 4850
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 607E64B1
P 3900 4600
F 0 "J5" H 3980 4592 50  0000 L CNN
F 1 "Alim arduino" H 3980 4501 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3900 4600 50  0001 C CNN
F 3 "~" H 3900 4600 50  0001 C CNN
	1    3900 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 607E98D7
P 2850 4600
F 0 "#PWR0107" H 2850 4350 50  0001 C CNN
F 1 "GND" V 2855 4472 50  0000 R CNN
F 2 "" H 2850 4600 50  0001 C CNN
F 3 "" H 2850 4600 50  0001 C CNN
	1    2850 4600
	0    1    1    0   
$EndComp
Text Label 2350 4900 0    50   ~ 0
V_In
Text Label 800  3550 0    50   ~ 0
I2C_Data
Text Label 950  3250 1    50   ~ 0
I2C_clk
Wire Wire Line
	3500 4900 3500 4700
Wire Wire Line
	3500 4700 3700 4700
Connection ~ 3150 4900
Wire Wire Line
	3150 4900 3500 4900
Wire Wire Line
	3700 4600 3150 4600
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 607661E9
P 2100 3850
F 0 "A1" H 2100 2761 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2100 2670 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2100 3850 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2100 3850 50  0001 C CNN
	1    2100 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 4600 3150 4600
Connection ~ 3150 4600
NoConn ~ 1600 4350
NoConn ~ 1600 4450
Text Label 3350 3550 0    50   ~ 0
In_1
Text Label 3350 3650 0    50   ~ 0
In_2
Text Label 3350 3750 0    50   ~ 0
EnA
NoConn ~ 7400 3650
NoConn ~ 7400 3750
NoConn ~ 2600 3950
NoConn ~ 2600 4050
NoConn ~ 2600 4150
NoConn ~ 6200 3450
NoConn ~ 6200 3550
NoConn ~ 6200 3650
Wire Wire Line
	6500 4450 6800 4450
Connection ~ 6800 4450
Wire Wire Line
	2800 4900 3150 4900
Wire Wire Line
	2200 4900 2800 4900
Connection ~ 2800 4900
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 60811C19
P 2800 4900
F 0 "#FLG0103" H 2800 4975 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 5073 50  0000 C CNN
F 2 "" H 2800 4900 50  0001 C CNN
F 3 "~" H 2800 4900 50  0001 C CNN
	1    2800 4900
	1    0    0    -1  
$EndComp
NoConn ~ 6600 4250
Wire Wire Line
	1050 4050 1150 4050
Text GLabel 1050 4050 0    50   Input ~ 0
thermistance
$Comp
L Device:CP C1
U 1 1 607F3359
P 3150 4750
F 0 "C1" H 3032 4704 50  0000 R CNN
F 1 "47u" H 3032 4795 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D6.0mm_P5.00mm" H 3188 4600 50  0001 C CNN
F 3 "~" H 3150 4750 50  0001 C CNN
	1    3150 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 4050 1150 3850
Wire Wire Line
	1150 3850 1600 3850
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 607DFD32
P 650 3750
F 0 "J8" H 678 3726 50  0000 L CNN
F 1 "Fluxm??tre" H 678 3635 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 650 3750 50  0001 C CNN
F 3 "~" H 650 3750 50  0001 C CNN
	1    650  3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607F159E
P 950 3750
F 0 "#PWR?" H 950 3500 50  0001 C CNN
F 1 "GND" H 955 3577 50  0000 C CNN
F 2 "" H 950 3750 50  0001 C CNN
F 3 "" H 950 3750 50  0001 C CNN
	1    950  3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3650 1600 3650
Wire Wire Line
	850  3750 950  3750
NoConn ~ 1600 3750
$EndSCHEMATC
