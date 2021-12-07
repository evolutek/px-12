EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PX12 Board"
Date "2021-12-07"
Rev "V2.0"
Comp "PX12 Project"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR015
U 1 1 5FB9ED0F
P 2850 1550
F 0 "#PWR015" H 2850 1300 50  0001 C CNN
F 1 "GND" H 2855 1377 50  0000 C CNN
F 2 "" H 2850 1550 50  0001 C CNN
F 3 "" H 2850 1550 50  0001 C CNN
	1    2850 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5FB9F070
P 2850 1250
F 0 "#PWR014" H 2850 1100 50  0001 C CNN
F 1 "+3.3V" H 2865 1423 50  0000 C CNN
F 2 "" H 2850 1250 50  0001 C CNN
F 3 "" H 2850 1250 50  0001 C CNN
	1    2850 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FBAB811
P 2850 1400
F 0 "C3" H 2700 1500 50  0000 L CNN
F 1 "10µF" H 2650 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2888 1250 50  0001 C CNN
F 3 "~" H 2850 1400 50  0001 C CNN
	1    2850 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FBD62C6
P 3150 1550
F 0 "#PWR017" H 3150 1300 50  0001 C CNN
F 1 "GND" H 3155 1377 50  0000 C CNN
F 2 "" H 3150 1550 50  0001 C CNN
F 3 "" H 3150 1550 50  0001 C CNN
	1    3150 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5FC0378B
P 6550 2500
F 0 "D3" V 6589 2382 50  0000 R CNN
F 1 "RED LED" V 6498 2382 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6550 2500 50  0001 C CNN
F 3 "~" H 6550 2500 50  0001 C CNN
	1    6550 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FC071E7
P 6550 2800
F 0 "R3" H 6620 2846 50  0000 L CNN
F 1 "560" H 6620 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6480 2800 50  0001 C CNN
F 3 "~" H 6550 2800 50  0001 C CNN
	1    6550 2800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5FC079D2
P 6550 2950
F 0 "#PWR027" H 6550 2700 50  0001 C CNN
F 1 "GND" H 6555 2777 50  0000 C CNN
F 2 "" H 6550 2950 50  0001 C CNN
F 3 "" H 6550 2950 50  0001 C CNN
	1    6550 2950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR022
U 1 1 5FC2204A
P 4150 2650
F 0 "#PWR022" H 4150 2500 50  0001 C CNN
F 1 "VCC" H 4165 2823 50  0000 C CNN
F 2 "" H 4150 2650 50  0001 C CNN
F 3 "" H 4150 2650 50  0001 C CNN
	1    4150 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 5FC25503
P 3150 1250
F 0 "#PWR016" H 3150 1100 50  0001 C CNN
F 1 "VCC" H 3165 1423 50  0000 C CNN
F 2 "" H 3150 1250 50  0001 C CNN
F 3 "" H 3150 1250 50  0001 C CNN
	1    3150 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male SWD1
U 1 1 5FCD609D
P 1200 1100
F 0 "SWD1" H 1100 1100 50  0000 R CNN
F 1 "Conn_01x05_Male" V 1263 812 50  0001 R CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0510_1x05_P1.25mm_Vertical" H 1200 1100 50  0001 C CNN
F 3 "~" H 1200 1100 50  0001 C CNN
	1    1200 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5FCD7FA0
P 1400 900
F 0 "#PWR04" H 1400 750 50  0001 C CNN
F 1 "+3.3V" V 1400 1150 50  0000 C CNN
F 2 "" H 1400 900 50  0001 C CNN
F 3 "" H 1400 900 50  0001 C CNN
	1    1400 900 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FCD91C3
P 1400 1300
F 0 "#PWR05" H 1400 1050 50  0001 C CNN
F 1 "GND" V 1400 1100 50  0000 C CNN
F 2 "" H 1400 1300 50  0001 C CNN
F 3 "" H 1400 1300 50  0001 C CNN
	1    1400 1300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Male AX12_1
U 1 1 5FCEF2A8
P 1200 1650
F 0 "AX12_1" H 1150 1650 50  0000 R CNN
F 1 "Conn_01x03_Male" V 1263 1462 50  0001 R CNN
F 2 "Connector_Molex:Molex_SPOX_5267-03A_1x03_P2.50mm_Vertical" H 1200 1650 50  0001 C CNN
F 3 "~" H 1200 1650 50  0001 C CNN
	1    1200 1650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5FCF19FF
P 1400 1650
F 0 "#PWR06" H 1400 1500 50  0001 C CNN
F 1 "VCC" V 1400 1850 50  0000 C CNN
F 2 "" H 1400 1650 50  0001 C CNN
F 3 "" H 1400 1650 50  0001 C CNN
	1    1400 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FCF231C
P 1400 1750
F 0 "#PWR07" H 1400 1500 50  0001 C CNN
F 1 "GND" V 1400 1550 50  0000 C CNN
F 2 "" H 1400 1750 50  0001 C CNN
F 3 "" H 1400 1750 50  0001 C CNN
	1    1400 1750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Male AX12_2
U 1 1 5FCF60B9
P 1200 2100
F 0 "AX12_2" H 1150 2100 50  0000 R CNN
F 1 "Conn_01x03_Male" V 1263 1912 50  0001 R CNN
F 2 "Connector_Molex:Molex_SPOX_5267-03A_1x03_P2.50mm_Vertical" H 1200 2100 50  0001 C CNN
F 3 "~" H 1200 2100 50  0001 C CNN
	1    1200 2100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5FCF60BF
P 1400 2100
F 0 "#PWR08" H 1400 1950 50  0001 C CNN
F 1 "VCC" V 1400 2300 50  0000 C CNN
F 2 "" H 1400 2100 50  0001 C CNN
F 3 "" H 1400 2100 50  0001 C CNN
	1    1400 2100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male VALVE1
U 1 1 5FD0F1C5
P 1100 2500
F 0 "VALVE1" H 950 2450 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1208 2590 50  0001 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0210_1x02_P1.25mm_Vertical" H 1100 2500 50  0001 C CNN
F 3 "~" H 1100 2500 50  0001 C CNN
	1    1100 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5FD2CFA8
P 4050 1650
F 0 "#PWR021" H 4050 1400 50  0001 C CNN
F 1 "GND" H 4055 1477 50  0000 C CNN
F 2 "" H 4050 1650 50  0001 C CNN
F 3 "" H 4050 1650 50  0001 C CNN
	1    4050 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FD2DD3E
P 3750 1500
F 0 "R1" H 3820 1546 50  0000 L CNN
F 1 "10K" H 3820 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3680 1500 50  0001 C CNN
F 3 "~" H 3750 1500 50  0001 C CNN
	1    3750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1650 4050 1650
Wire Wire Line
	4050 1550 4050 1650
Connection ~ 4050 1650
$Comp
L power:GND #PWR028
U 1 1 5FCD24B1
P 7450 2650
F 0 "#PWR028" H 7450 2400 50  0001 C CNN
F 1 "GND" H 7455 2477 50  0000 C CNN
F 2 "" H 7450 2650 50  0001 C CNN
F 3 "" H 7450 2650 50  0001 C CNN
	1    7450 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR029
U 1 1 5FCD4B18
P 7500 950
F 0 "#PWR029" H 7500 800 50  0001 C CNN
F 1 "+3.3V" H 7515 1123 50  0000 C CNN
F 2 "" H 7500 950 50  0001 C CNN
F 3 "" H 7500 950 50  0001 C CNN
	1    7500 950 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5FBCE26B
P 1300 2500
F 0 "#PWR01" H 1300 2350 50  0001 C CNN
F 1 "VCC" V 1300 2700 50  0000 C CNN
F 2 "" H 1300 2500 50  0001 C CNN
F 3 "" H 1300 2500 50  0001 C CNN
	1    1300 2500
	0    1    1    0   
$EndComp
Text Notes 950  700  0    50   ~ 0
Connectors
Wire Notes Line
	500  500  500  3400
Wire Notes Line
	500  3400 1900 3400
Wire Notes Line
	1900 3400 1900 500 
Wire Notes Line
	1900 500  500  500 
Text Notes 2500 750  0    50   ~ 0
Decoupling
Wire Notes Line
	1950 500  3400 500 
Wire Notes Line
	3400 500  3400 1950
Wire Notes Line
	3400 1950 1950 1950
Wire Notes Line
	1950 1950 1950 500 
Wire Notes Line
	3800 2000 3800 3400
Wire Notes Line
	5750 3400 5750 2000
Wire Notes Line
	5750 2000 3800 2000
Text Notes 4450 2150 0    50   ~ 0
3.3V Regulation\n
$Comp
L Diode:1N4148W D1
U 1 1 5FD40FA2
P 4050 1000
F 0 "D1" V 3950 1200 50  0000 L CNN
F 1 "1N4148W" V 4050 1100 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" H 4050 825 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4050 1000 50  0001 C CNN
	1    4050 1000
	0    1    1    0   
$EndComp
Wire Notes Line
	5750 1950 5750 500 
Wire Notes Line
	3450 500  3450 1950
Text Notes 4500 700  0    50   ~ 0
Mosfets
Text Notes 550  1100 0    50   ~ 0
PROG\n  /\nDEBUG
Text Notes 550  1550 0    50   ~ 0
BUS AX12
Wire Notes Line
	650  800  1750 800 
Wire Notes Line
	650  1400 1750 1400
Wire Notes Line
	650  2300 1750 2300
Text Notes 550  2450 0    50   ~ 0
VALVE
Wire Wire Line
	1300 2600 1750 2600
Text Label 1750 2600 2    50   ~ 0
VALVE_GND
Wire Notes Line
	5800 3400 9450 3400
Wire Notes Line
	9450 3400 9450 500 
Wire Notes Line
	9450 500  5800 500 
Wire Notes Line
	5800 500  5800 3400
Text Notes 7050 750  0    50   ~ 0
UC
Wire Notes Line
	3450 1950 5750 1950
Wire Notes Line
	5750 3400 3800 3400
Wire Notes Line
	5750 500  3450 500 
NoConn ~ 8000 1950
$Comp
L power:GND #PWR09
U 1 1 5FCF60C5
P 1400 2200
F 0 "#PWR09" H 1400 1950 50  0001 C CNN
F 1 "GND" V 1400 2000 50  0000 C CNN
F 2 "" H 1400 2200 50  0001 C CNN
F 3 "" H 1400 2200 50  0001 C CNN
	1    1400 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C4
U 1 1 5FDA85E6
P 3150 1400
F 0 "C4" H 2950 1500 50  0000 L CNN
F 1 "33uF" H 2950 1300 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 3188 1250 50  0001 C CNN
F 3 "~" H 3150 1400 50  0001 C CNN
	1    3150 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR020
U 1 1 5FF2C76A
P 4050 850
F 0 "#PWR020" H 4050 700 50  0001 C CNN
F 1 "VCC" H 4050 1000 50  0000 C CNN
F 2 "" H 4050 850 50  0001 C CNN
F 3 "" H 4050 850 50  0001 C CNN
	1    4050 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1150 5650 1150
Text Label 5650 1150 2    50   ~ 0
VALVE_GND
Text Notes 4250 1850 0    50   ~ 0
MOSFET :\nIRLML2402GTRPBF
Connection ~ 5200 1150
$Comp
L power:VCC #PWR023
U 1 1 5FD983F0
P 5200 850
F 0 "#PWR023" H 5200 700 50  0001 C CNN
F 1 "VCC" H 5215 1023 50  0000 C CNN
F 2 "" H 5200 850 50  0001 C CNN
F 3 "" H 5200 850 50  0001 C CNN
	1    5200 850 
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148W D2
U 1 1 5FD983EA
P 5200 1000
F 0 "D2" V 5100 1200 50  0000 L CNN
F 1 "1N4148W" V 5200 1100 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" H 5200 825 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 5200 1000 50  0001 C CNN
	1    5200 1000
	0    1    1    0   
$EndComp
Connection ~ 5200 1650
Wire Wire Line
	5200 1550 5200 1650
Wire Wire Line
	4900 1650 5200 1650
$Comp
L Device:R R2
U 1 1 5FD983E1
P 4900 1500
F 0 "R2" H 4970 1546 50  0000 L CNN
F 1 "10K" H 4970 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4830 1500 50  0001 C CNN
F 3 "~" H 4900 1500 50  0001 C CNN
	1    4900 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5FD983DB
P 5200 1650
F 0 "#PWR024" H 5200 1400 50  0001 C CNN
F 1 "GND" H 5205 1477 50  0000 C CNN
F 2 "" H 5200 1650 50  0001 C CNN
F 3 "" H 5200 1650 50  0001 C CNN
	1    5200 1650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLML2060 Q2
U 1 1 5FD983D5
P 5100 1350
F 0 "Q2" H 5304 1396 50  0000 L CNN
F 1 "IRLML2060" H 5304 1305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5300 1275 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml2060pbf.pdf?fileId=5546d462533600a401535664b7fb25ee" H 5100 1350 50  0001 L CNN
	1    5100 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5FF82039
P 2550 1550
F 0 "#PWR013" H 2550 1300 50  0001 C CNN
F 1 "GND" H 2555 1377 50  0000 C CNN
F 2 "" H 2550 1550 50  0001 C CNN
F 3 "" H 2550 1550 50  0001 C CNN
	1    2550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 5FF82043
P 2550 1250
F 0 "#PWR012" H 2550 1100 50  0001 C CNN
F 1 "+3.3V" H 2565 1423 50  0000 C CNN
F 2 "" H 2550 1250 50  0001 C CNN
F 3 "" H 2550 1250 50  0001 C CNN
	1    2550 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FF8204D
P 2550 1400
F 0 "C2" H 2400 1500 50  0000 L CNN
F 1 "100nF" H 2300 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2588 1250 50  0001 C CNN
F 3 "~" H 2550 1400 50  0001 C CNN
	1    2550 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5FF84B1A
P 2250 1550
F 0 "#PWR011" H 2250 1300 50  0001 C CNN
F 1 "GND" H 2255 1377 50  0000 C CNN
F 2 "" H 2250 1550 50  0001 C CNN
F 3 "" H 2250 1550 50  0001 C CNN
	1    2250 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5FF84B2C
P 2250 1250
F 0 "#PWR010" H 2250 1100 50  0001 C CNN
F 1 "+3.3V" H 2265 1423 50  0000 C CNN
F 2 "" H 2250 1250 50  0001 C CNN
F 3 "" H 2250 1250 50  0001 C CNN
	1    2250 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FF84B36
P 2250 1400
F 0 "C1" H 2100 1500 50  0000 L CNN
F 1 "100nF" H 2000 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2288 1250 50  0001 C CNN
F 3 "~" H 2250 1400 50  0001 C CNN
	1    2250 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5FF91B6D
P 6550 1300
F 0 "C7" H 6400 1400 50  0000 L CNN
F 1 "100nF" H 6300 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6588 1150 50  0001 C CNN
F 3 "~" H 6550 1300 50  0001 C CNN
	1    6550 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5FF92616
P 6550 1450
F 0 "#PWR026" H 6550 1200 50  0001 C CNN
F 1 "GND" H 6555 1277 50  0000 C CNN
F 2 "" H 6550 1450 50  0001 C CNN
F 3 "" H 6550 1450 50  0001 C CNN
	1    6550 1450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad PVCC1
U 1 1 5FF9404E
P 4450 850
F 0 "PVCC1" V 4404 1000 50  0000 L CNN
F 1 "MountingHole_Pad" V 4495 1000 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 4450 850 50  0001 C CNN
F 3 "~" H 4450 850 50  0001 C CNN
	1    4450 850 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad PGND1
U 1 1 5FF97DA6
P 4450 1150
F 0 "PGND1" V 4404 1300 50  0000 L CNN
F 1 "MountingHole_Pad" V 4495 1300 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 4450 1150 50  0001 C CNN
F 3 "~" H 4450 1150 50  0001 C CNN
	1    4450 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 850  4350 850 
Wire Wire Line
	4350 1150 4050 1150
$Comp
L MCU_ST_STM32L0:STM32L031G6Ux U3
U 1 1 61AD6CF1
P 7500 1750
F 0 "U3" H 8050 750 50  0000 C CNN
F 1 "STM32L031G6Ux" H 8050 650 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-28_4x4mm_P0.5mm" H 7000 950 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00140359.pdf" H 7500 1750 50  0001 C CNN
	1    7500 1750
	1    0    0    -1  
$EndComp
NoConn ~ 8000 2450
NoConn ~ 6900 1750
NoConn ~ 6900 1850
NoConn ~ 6900 2250
NoConn ~ 6900 2350
NoConn ~ 6900 2450
Wire Wire Line
	7400 2650 7450 2650
Connection ~ 7450 2650
Wire Wire Line
	7450 2650 7500 2650
Wire Wire Line
	7400 950  7500 950 
Connection ~ 7500 950 
Wire Wire Line
	7500 950  7600 950 
$Comp
L ComponentsEvo:MPRLS0025PA00001A U1
U 1 1 61B0CEC2
P 2900 2850
F 0 "U1" H 2900 3317 50  0000 C CNN
F 1 "MPRLS0025PA00001A" H 2900 3226 50  0000 C CNN
F 2 "ComponentsEvo:XDCR_MPRLS0025PA00001A" H 2900 2450 50  0001 L BNN
F 3 "" H 2900 2450 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 2900 2450 50  0001 L BNN "STANDARD"
F 5 "03/18" H 2900 2450 50  0001 L BNN "PARTREV"
F 6 "Honeywell Sensing" H 2900 2450 50  0001 L BNN "MANUFACTURER"
	1    2900 2850
	1    0    0    -1  
$EndComp
NoConn ~ 3450 2750
NoConn ~ 3450 2850
$Comp
L power:+3.3V #PWR018
U 1 1 61B216B6
P 3450 2650
F 0 "#PWR018" H 3450 2500 50  0001 C CNN
F 1 "+3.3V" H 3465 2823 50  0000 C CNN
F 2 "" H 3450 2650 50  0001 C CNN
F 3 "" H 3450 2650 50  0001 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 61B22BC9
P 3450 3050
F 0 "#PWR019" H 3450 2800 50  0001 C CNN
F 1 "GND" H 3455 2877 50  0000 C CNN
F 2 "" H 3450 3050 50  0001 C CNN
F 3 "" H 3450 3050 50  0001 C CNN
	1    3450 3050
	1    0    0    -1  
$EndComp
NoConn ~ 2350 2650
Wire Notes Line
	1950 3400 3750 3400
Wire Notes Line
	3750 3400 3750 2000
Wire Notes Line
	3750 2000 1950 2000
Wire Notes Line
	1950 2000 1950 3400
Text Notes 2550 2150 0    50   ~ 0
Pressure sensor
Connection ~ 4050 850 
Wire Notes Line
	650  2800 1750 2800
$Comp
L Connector:Conn_01x03_Male PS1
U 1 1 61B8E74E
P 1100 3150
F 0 "PS1" H 1050 3150 50  0000 R CNN
F 1 "Conn_01x03_Male" V 1163 2962 50  0001 R CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 1100 3150 50  0001 C CNN
F 3 "~" H 1100 3150 50  0001 C CNN
	1    1100 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 61B8F54B
P 1300 3050
F 0 "#PWR02" H 1300 2900 50  0001 C CNN
F 1 "VCC" V 1300 3250 50  0000 C CNN
F 2 "" H 1300 3050 50  0001 C CNN
F 3 "" H 1300 3050 50  0001 C CNN
	1    1300 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 3150 1550 3150
$Comp
L power:GND #PWR03
U 1 1 61B90FD2
P 1300 3250
F 0 "#PWR03" H 1300 3000 50  0001 C CNN
F 1 "GND" V 1300 3050 50  0000 C CNN
F 2 "" H 1300 3250 50  0001 C CNN
F 3 "" H 1300 3250 50  0001 C CNN
	1    1300 3250
	0    -1   -1   0   
$EndComp
Text Label 1550 3150 2    50   ~ 0
PS
Wire Wire Line
	8000 1150 8350 1150
Wire Wire Line
	8000 1250 8350 1250
Text Label 8350 1150 2    50   ~ 0
PUMP
Text Label 8350 1250 2    50   ~ 0
VALVE
Wire Wire Line
	8000 1450 8350 1450
Wire Wire Line
	8000 1550 8350 1550
Text Label 8350 1450 2    50   ~ 0
INT
Text Label 8350 1550 2    50   ~ 0
~SS
Wire Wire Line
	8000 1650 8350 1650
Text Label 8350 1650 2    50   ~ 0
SCLK
Wire Wire Line
	8000 1750 8350 1750
Text Label 8350 1750 2    50   ~ 0
MISO
Wire Wire Line
	8000 1850 8350 1850
Text Label 8350 1850 2    50   ~ 0
MOSI
Wire Wire Line
	8000 2250 8350 2250
Text Label 8350 2250 2    50   ~ 0
SWDIO
Wire Wire Line
	8000 2350 8350 2350
Text Label 8350 2350 2    50   ~ 0
SWCLK
Wire Wire Line
	6900 1150 6550 1150
Connection ~ 6550 1150
Wire Wire Line
	6550 1150 6350 1150
Text Label 6350 1150 0    50   ~ 0
~RST
Connection ~ 4050 1150
$Comp
L Transistor_FET:IRLML2060 Q1
U 1 1 5FD1BD93
P 3950 1350
F 0 "Q1" H 4154 1396 50  0000 L CNN
F 1 "IRLML2060" H 4154 1305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4150 1275 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml2060pbf.pdf?fileId=5546d462533600a401535664b7fb25ee" H 3950 1350 50  0001 L CNN
	1    3950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1350 4650 1350
Connection ~ 4900 1350
Text Label 4650 1350 0    50   ~ 0
VALVE
Connection ~ 3750 1350
Wire Wire Line
	3500 1350 3750 1350
Text Label 3500 1350 0    50   ~ 0
PUMP
Wire Wire Line
	3450 2950 3650 2950
Text Label 3650 2950 2    50   ~ 0
INT
Wire Wire Line
	2350 3050 2100 3050
Text Label 2100 3050 0    50   ~ 0
MISO
Wire Wire Line
	2350 2950 2100 2950
Text Label 2100 2950 0    50   ~ 0
MOSI
Wire Wire Line
	2350 2850 2100 2850
Text Label 2100 2850 0    50   ~ 0
SCLK
Wire Wire Line
	2350 2750 2100 2750
$Comp
L Device:R R6
U 1 1 61BB2BF5
P 9000 1500
F 0 "R6" H 9070 1546 50  0000 L CNN
F 1 "R2" H 9070 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8930 1500 50  0001 C CNN
F 3 "~" H 9000 1500 50  0001 C CNN
	1    9000 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 61BB3FAF
P 9000 1200
F 0 "R5" H 9070 1246 50  0000 L CNN
F 1 "R1" H 9070 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8930 1200 50  0001 C CNN
F 3 "~" H 9000 1200 50  0001 C CNN
	1    9000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1050 9000 750 
Text Label 9000 750  3    50   ~ 0
PS
$Comp
L power:GND #PWR031
U 1 1 61BBA836
P 9000 1650
F 0 "#PWR031" H 9000 1400 50  0001 C CNN
F 1 "GND" H 9005 1477 50  0000 C CNN
F 2 "" H 9000 1650 50  0001 C CNN
F 3 "" H 9000 1650 50  0001 C CNN
	1    9000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1350 9000 1350
Connection ~ 9000 1350
Text Notes 9550 1350 0    50   ~ 0
Choose R1 & R2 using this formula :\nVCC x (R1 / (R1 + R2)) = 3.3V
$Comp
L Device:C C6
U 1 1 61BC95A5
P 5350 2800
F 0 "C6" H 5200 2900 50  0000 L CNN
F 1 "1µF" H 5200 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5388 2650 50  0001 C CNN
F 3 "~" H 5350 2800 50  0001 C CNN
	1    5350 2800
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:ADP7142AUJZ-3.3 U2
U 1 1 61BD837D
P 4750 2750
F 0 "U2" H 4750 3117 50  0000 C CNN
F 1 "RT9078-33GJ5" H 4750 3026 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 4750 2350 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADP7142.pdf" H 4750 2250 50  0001 C CNN
	1    4750 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61BD98F8
P 4150 2800
F 0 "C5" H 4000 2900 50  0000 L CNN
F 1 "1µF" H 4000 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4188 2650 50  0001 C CNN
F 3 "~" H 4150 2800 50  0001 C CNN
	1    4150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2650 4350 2650
Connection ~ 4150 2650
Wire Wire Line
	4350 2850 4350 2650
Connection ~ 4350 2650
Wire Wire Line
	4150 2950 4150 3050
Wire Wire Line
	4150 3050 4750 3050
Wire Wire Line
	5150 2750 5150 2650
Wire Wire Line
	5150 2650 5350 2650
Connection ~ 5150 2650
Wire Wire Line
	5350 2950 5350 3050
Wire Wire Line
	5350 3050 4750 3050
Connection ~ 4750 3050
$Comp
L power:+3.3V #PWR025
U 1 1 61BE481A
P 5350 2650
F 0 "#PWR025" H 5350 2500 50  0001 C CNN
F 1 "+3.3V" H 5365 2823 50  0000 C CNN
F 2 "" H 5350 2650 50  0001 C CNN
F 3 "" H 5350 2650 50  0001 C CNN
	1    5350 2650
	1    0    0    -1  
$EndComp
Connection ~ 5350 2650
Text Notes 550  2950 0    50   ~ 0
PRESSURE SENSOR
Wire Wire Line
	1400 2000 1650 2000
Wire Wire Line
	1400 1550 1650 1550
Text Label 1650 1550 2    50   ~ 0
AX12
Text Label 1650 2000 2    50   ~ 0
AX12
Wire Wire Line
	1400 1200 1650 1200
Text Label 1650 1200 2    50   ~ 0
SWDIO
Wire Wire Line
	1400 1100 1650 1100
Text Label 1650 1100 2    50   ~ 0
SWCLK
Wire Wire Line
	1400 1000 1650 1000
Text Label 1650 1000 2    50   ~ 0
~RST
Text Label 2100 2750 0    50   ~ 0
~SS
Wire Wire Line
	8550 2050 8950 2050
Text Label 8950 2050 2    50   ~ 0
AX12
Connection ~ 8550 2050
$Comp
L power:+3.3V #PWR030
U 1 1 61AF73CB
P 8550 1750
F 0 "#PWR030" H 8550 1600 50  0001 C CNN
F 1 "+3.3V" H 8565 1923 50  0000 C CNN
F 2 "" H 8550 1750 50  0001 C CNN
F 3 "" H 8550 1750 50  0001 C CNN
	1    8550 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 61AF3FD3
P 8550 1900
F 0 "R4" H 8620 1946 50  0000 L CNN
F 1 "10K" H 8620 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8480 1900 50  0001 C CNN
F 3 "~" H 8550 1900 50  0001 C CNN
	1    8550 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61C8ED6A
P 4750 3050
F 0 "#PWR0101" H 4750 2800 50  0001 C CNN
F 1 "GND" H 4755 2877 50  0000 C CNN
F 2 "" H 4750 3050 50  0001 C CNN
F 3 "" H 4750 3050 50  0001 C CNN
	1    4750 3050
	1    0    0    -1  
$EndComp
NoConn ~ 6900 1350
Wire Wire Line
	8000 2050 8100 2050
Wire Wire Line
	8000 2150 8100 2150
Wire Wire Line
	8100 2150 8100 2050
Connection ~ 8100 2050
Wire Wire Line
	8100 2050 8550 2050
Wire Wire Line
	6900 2050 6550 2050
Wire Wire Line
	6550 2050 6550 2350
NoConn ~ 6900 2150
$EndSCHEMATC