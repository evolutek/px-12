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
L Device:C C?
U 1 1 5FB9DC6B
P 2450 1100
F 0 "C?" H 2565 1146 50  0000 L CNN
F 1 "100nF" H 2565 1055 50  0000 L CNN
F 2 "" H 2488 950 50  0001 C CNN
F 3 "~" H 2450 1100 50  0001 C CNN
	1    2450 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB9ED0F
P 2450 1250
F 0 "#PWR?" H 2450 1000 50  0001 C CNN
F 1 "GND" H 2455 1077 50  0000 C CNN
F 2 "" H 2450 1250 50  0001 C CNN
F 3 "" H 2450 1250 50  0001 C CNN
	1    2450 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FB9F070
P 2450 950
F 0 "#PWR?" H 2450 800 50  0001 C CNN
F 1 "+3.3V" H 2465 1123 50  0000 C CNN
F 2 "" H 2450 950 50  0001 C CNN
F 3 "" H 2450 950 50  0001 C CNN
	1    2450 950 
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F0:STM32F042T6Yx U?
U 1 1 5FBA0725
P 1250 1700
F 0 "U?" H 1250 511 50  0000 C CNN
F 1 "STM32F042T6Yx" H 1250 420 50  0000 C CNN
F 2 "Package_CSP:ST_WLCSP-36_Die445" H 850 700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00105814.pdf" H 1250 1700 50  0001 C CNN
	1    1250 1700
	1    0    0    -1  
$EndComp
Connection ~ 2450 1250
Connection ~ 2450 950 
Wire Wire Line
	2200 1250 2450 1250
Wire Wire Line
	2200 950  2450 950 
$Comp
L Device:C C?
U 1 1 5FB9D933
P 2200 1100
F 0 "C?" H 2315 1146 50  0000 L CNN
F 1 "100nF" H 2315 1055 50  0000 L CNN
F 2 "" H 2238 950 50  0001 C CNN
F 3 "~" H 2200 1100 50  0001 C CNN
	1    2200 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FBA5CCE
P 2650 1100
F 0 "C?" H 2765 1146 50  0000 L CNN
F 1 "4.7µF" H 2765 1055 50  0000 L CNN
F 2 "" H 2688 950 50  0001 C CNN
F 3 "~" H 2650 1100 50  0001 C CNN
	1    2650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 950  2650 950 
Wire Wire Line
	2650 1250 2450 1250
$Comp
L Device:C C?
U 1 1 5FBAA222
P 3100 1100
F 0 "C?" H 3215 1146 50  0000 L CNN
F 1 "4.7µF" H 3215 1055 50  0000 L CNN
F 2 "" H 3138 950 50  0001 C CNN
F 3 "~" H 3100 1100 50  0001 C CNN
	1    3100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBAA228
P 3100 1250
F 0 "#PWR?" H 3100 1000 50  0001 C CNN
F 1 "GND" H 3105 1077 50  0000 C CNN
F 2 "" H 3100 1250 50  0001 C CNN
F 3 "" H 3100 1250 50  0001 C CNN
	1    3100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FBAA22E
P 3100 950
F 0 "#PWR?" H 3100 800 50  0001 C CNN
F 1 "+3.3V" H 3115 1123 50  0000 C CNN
F 2 "" H 3100 950 50  0001 C CNN
F 3 "" H 3100 950 50  0001 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
Connection ~ 3100 1250
Connection ~ 3100 950 
Wire Wire Line
	2850 1250 3100 1250
Wire Wire Line
	2850 950  3100 950 
$Comp
L Device:C C?
U 1 1 5FBAA238
P 2850 1100
F 0 "C?" H 2965 1146 50  0000 L CNN
F 1 "100nF" H 2965 1055 50  0000 L CNN
F 2 "" H 2888 950 50  0001 C CNN
F 3 "~" H 2850 1100 50  0001 C CNN
	1    2850 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FBAB811
P 3550 1100
F 0 "C?" H 3665 1146 50  0000 L CNN
F 1 "1µF" H 3665 1055 50  0000 L CNN
F 2 "" H 3588 950 50  0001 C CNN
F 3 "~" H 3550 1100 50  0001 C CNN
	1    3550 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBAB817
P 3550 1250
F 0 "#PWR?" H 3550 1000 50  0001 C CNN
F 1 "GND" H 3555 1077 50  0000 C CNN
F 2 "" H 3550 1250 50  0001 C CNN
F 3 "" H 3550 1250 50  0001 C CNN
	1    3550 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FBAB81D
P 3550 950
F 0 "#PWR?" H 3550 800 50  0001 C CNN
F 1 "+3.3V" H 3565 1123 50  0000 C CNN
F 2 "" H 3550 950 50  0001 C CNN
F 3 "" H 3550 950 50  0001 C CNN
	1    3550 950 
	1    0    0    -1  
$EndComp
Connection ~ 3550 1250
Connection ~ 3550 950 
Wire Wire Line
	3300 1250 3550 1250
Wire Wire Line
	3300 950  3550 950 
$Comp
L Device:C C?
U 1 1 5FBAB827
P 3300 1100
F 0 "C?" H 3415 1146 50  0000 L CNN
F 1 "10nF" H 3415 1055 50  0000 L CNN
F 2 "" H 3338 950 50  0001 C CNN
F 3 "~" H 3300 1100 50  0001 C CNN
	1    3300 1100
	1    0    0    -1  
$EndComp
Text Notes 2400 750  0    50   ~ 0
Vdd
Text Notes 2950 750  0    50   ~ 0
Vddio2
Text Notes 3450 750  0    50   ~ 0
Vdda
$Comp
L power:+3.3V #PWR?
U 1 1 5FBB47C1
P 1250 700
F 0 "#PWR?" H 1250 550 50  0001 C CNN
F 1 "+3.3V" H 1265 873 50  0000 C CNN
F 2 "" H 1250 700 50  0001 C CNN
F 3 "" H 1250 700 50  0001 C CNN
	1    1250 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBB558C
P 1150 2800
F 0 "#PWR?" H 1150 2550 50  0001 C CNN
F 1 "GND" H 1155 2627 50  0000 C CNN
F 2 "" H 1150 2800 50  0001 C CNN
F 3 "" H 1150 2800 50  0001 C CNN
	1    1150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2800 1150 2800
Connection ~ 1150 2800
Wire Wire Line
	1150 700  1250 700 
Connection ~ 1250 700 
Wire Wire Line
	1250 700  1350 700 
Text GLabel 750  900  0    50   Input ~ 0
RST
Text GLabel 1750 1100 2    50   Input ~ 0
Pump
Text GLabel 1750 1200 2    50   Input ~ 0
Valve
Text GLabel 1750 2000 2    50   Input ~ 0
LIN_TX
Text GLabel 1750 2100 2    50   Input ~ 0
LIN_RX
Text GLabel 750  2500 0    50   Input ~ 0
SDA
Text GLabel 750  2400 0    50   Input ~ 0
SCL
$Comp
L Device:C C?
U 1 1 5FBD4F8F
P 3750 1100
F 0 "C?" H 3865 1146 50  0000 L CNN
F 1 "33µF" H 3865 1055 50  0000 L CNN
F 2 "" H 3788 950 50  0001 C CNN
F 3 "~" H 3750 1100 50  0001 C CNN
	1    3750 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBD62C6
P 3750 1250
F 0 "#PWR?" H 3750 1000 50  0001 C CNN
F 1 "GND" H 3755 1077 50  0000 C CNN
F 2 "" H 3750 1250 50  0001 C CNN
F 3 "" H 3750 1250 50  0001 C CNN
	1    3750 1250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:NCP718xSN330 U?
U 1 1 5FBF3BDD
P 5050 1100
F 0 "U?" H 5050 1467 50  0000 C CNN
F 1 "NCP718xSN330" H 5050 1376 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5050 1450 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NCP718-D.PDF" H 5050 1600 50  0001 C CNN
	1    5050 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBF7C23
P 5050 1400
F 0 "#PWR?" H 5050 1150 50  0001 C CNN
F 1 "GND" H 5055 1227 50  0000 C CNN
F 2 "" H 5050 1400 50  0001 C CNN
F 3 "" H 5050 1400 50  0001 C CNN
	1    5050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1100 5350 1000
$Comp
L Device:C C?
U 1 1 5FBF954A
P 4750 1250
F 0 "C?" H 4865 1296 50  0000 L CNN
F 1 "1µF" H 4865 1205 50  0000 L CNN
F 2 "" H 4788 1100 50  0001 C CNN
F 3 "~" H 4750 1250 50  0001 C CNN
	1    4750 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FBF9F34
P 5350 1150
F 0 "C?" H 5465 1196 50  0000 L CNN
F 1 "1µF" H 5465 1105 50  0000 L CNN
F 2 "" H 5388 1000 50  0001 C CNN
F 3 "~" H 5350 1150 50  0001 C CNN
	1    5350 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1300 5350 1400
Wire Wire Line
	5350 1400 5050 1400
Connection ~ 5050 1400
Wire Wire Line
	5050 1400 4750 1400
$Comp
L power:+3.3V #PWR?
U 1 1 5FBFB779
P 5350 1000
F 0 "#PWR?" H 5350 850 50  0001 C CNN
F 1 "+3.3V" H 5365 1173 50  0000 C CNN
F 2 "" H 5350 1000 50  0001 C CNN
F 3 "" H 5350 1000 50  0001 C CNN
	1    5350 1000
	1    0    0    -1  
$EndComp
Connection ~ 5350 1000
$Comp
L Device:LED D?
U 1 1 5FC0378B
P 5700 1000
F 0 "D?" V 5739 882 50  0000 R CNN
F 1 "LED" V 5648 882 50  0000 R CNN
F 2 "" H 5700 1000 50  0001 C CNN
F 3 "~" H 5700 1000 50  0001 C CNN
	1    5700 1000
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FC06806
P 5700 850
F 0 "#PWR?" H 5700 700 50  0001 C CNN
F 1 "+3.3V" H 5715 1023 50  0000 C CNN
F 2 "" H 5700 850 50  0001 C CNN
F 3 "" H 5700 850 50  0001 C CNN
	1    5700 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FC071E7
P 5700 1300
F 0 "R?" H 5770 1346 50  0000 L CNN
F 1 "560" H 5770 1255 50  0000 L CNN
F 2 "" V 5630 1300 50  0001 C CNN
F 3 "~" H 5700 1300 50  0001 C CNN
	1    5700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC079D2
P 5700 1450
F 0 "#PWR?" H 5700 1200 50  0001 C CNN
F 1 "GND" H 5705 1277 50  0000 C CNN
F 2 "" H 5700 1450 50  0001 C CNN
F 3 "" H 5700 1450 50  0001 C CNN
	1    5700 1450
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:TJA1021TK U?
U 1 1 5FC0D2E4
P 1250 3850
F 0 "U?" H 1250 4431 50  0000 C CNN
F 1 "TJA1021TK" H 1250 4340 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x3mm_P0.65mm_EP1.55x2.4mm" H 1250 3350 50  0001 C CIN
F 3 "http://www.nxp.com/documents/data_sheet/TJA1021.pdf" H 1250 3850 50  0001 C CNN
	1    1250 3850
	1    0    0    -1  
$EndComp
Text GLabel 750  3750 0    50   Input ~ 0
LIN_TX
Text GLabel 750  3650 0    50   Input ~ 0
LIN_RX
$Comp
L power:GND #PWR?
U 1 1 5FC19EC9
P 1250 4250
F 0 "#PWR?" H 1250 4000 50  0001 C CNN
F 1 "GND" H 1255 4077 50  0000 C CNN
F 2 "" H 1250 4250 50  0001 C CNN
F 3 "" H 1250 4250 50  0001 C CNN
	1    1250 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC1B381
P 1350 4250
F 0 "#PWR?" H 1350 4000 50  0001 C CNN
F 1 "GND" H 1355 4077 50  0000 C CNN
F 2 "" H 1350 4250 50  0001 C CNN
F 3 "" H 1350 4250 50  0001 C CNN
	1    1350 4250
	1    0    0    -1  
$EndComp
Text GLabel 1750 3950 2    50   Input ~ 0
LIN
$Comp
L power:+3.3V #PWR?
U 1 1 5FC1D04D
P 1750 3750
F 0 "#PWR?" H 1750 3600 50  0001 C CNN
F 1 "+3.3V" H 1765 3923 50  0000 C CNN
F 2 "" H 1750 3750 50  0001 C CNN
F 3 "" H 1750 3750 50  0001 C CNN
	1    1750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FC1F067
P 750 3950
F 0 "#PWR?" H 750 3800 50  0001 C CNN
F 1 "+3.3V" H 765 4123 50  0000 C CNN
F 2 "" H 750 3950 50  0001 C CNN
F 3 "" H 750 3950 50  0001 C CNN
	1    750  3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FC1FF37
P 750 4050
F 0 "#PWR?" H 750 3900 50  0001 C CNN
F 1 "+3.3V" H 765 4223 50  0000 C CNN
F 2 "" H 750 4050 50  0001 C CNN
F 3 "" H 750 4050 50  0001 C CNN
	1    750  4050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FC20381
P 1250 3450
F 0 "#PWR?" H 1250 3300 50  0001 C CNN
F 1 "VCC" H 1265 3623 50  0000 C CNN
F 2 "" H 1250 3450 50  0001 C CNN
F 3 "" H 1250 3450 50  0001 C CNN
	1    1250 3450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FC2204A
P 4750 1000
F 0 "#PWR?" H 4750 850 50  0001 C CNN
F 1 "VCC" H 4765 1173 50  0000 C CNN
F 2 "" H 4750 1000 50  0001 C CNN
F 3 "" H 4750 1000 50  0001 C CNN
	1    4750 1000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FC25503
P 3750 950
F 0 "#PWR?" H 3750 800 50  0001 C CNN
F 1 "VCC" H 3765 1123 50  0000 C CNN
F 2 "" H 3750 950 50  0001 C CNN
F 3 "" H 3750 950 50  0001 C CNN
	1    3750 950 
	1    0    0    -1  
$EndComp
Wire Notes Line
	2050 500  2050 3050
Wire Notes Line
	500  3050 500  500 
Wire Notes Line
	6050 500  6050 1650
Text GLabel 1750 2200 2    50   Input ~ 0
USB_DM
Text GLabel 1750 2300 2    50   Input ~ 0
USB_DP
Text GLabel 1750 2400 2    50   Input ~ 0
SWDIO
Text GLabel 1750 2500 2    50   Input ~ 0
SWCLK
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 5FCD609D
P 6200 950
F 0 "J?" V 6354 662 50  0000 R CNN
F 1 "Conn_01x05_Male" V 6263 662 50  0000 R CNN
F 2 "" H 6200 950 50  0001 C CNN
F 3 "~" H 6200 950 50  0001 C CNN
	1    6200 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FCD7FA0
P 6400 750
F 0 "#PWR?" H 6400 600 50  0001 C CNN
F 1 "+3.3V" H 6415 923 50  0000 C CNN
F 2 "" H 6400 750 50  0001 C CNN
F 3 "" H 6400 750 50  0001 C CNN
	1    6400 750 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FCD91C3
P 6400 1150
F 0 "#PWR?" H 6400 900 50  0001 C CNN
F 1 "GND" H 6405 977 50  0000 C CNN
F 2 "" H 6400 1150 50  0001 C CNN
F 3 "" H 6400 1150 50  0001 C CNN
	1    6400 1150
	0    -1   -1   0   
$EndComp
Text GLabel 6400 850  2    50   Input ~ 0
RST
Text GLabel 6400 950  2    50   Input ~ 0
SWCLK
Text GLabel 6400 1050 2    50   Input ~ 0
SWDIO
Wire Notes Line
	8250 1650 8250 500 
Wire Notes Line
	2050 1650 8250 1650
Wire Notes Line
	500  500  8250 500 
Text Notes 6150 850  3    50   ~ 0
DEBUG
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5FCEF2A8
P 6850 800
F 0 "J?" V 7004 612 50  0000 R CNN
F 1 "Conn_01x03_Male" V 6913 612 50  0000 R CNN
F 2 "" H 6850 800 50  0001 C CNN
F 3 "~" H 6850 800 50  0001 C CNN
	1    6850 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FCF19FF
P 7050 700
F 0 "#PWR?" H 7050 550 50  0001 C CNN
F 1 "VCC" H 7065 873 50  0000 C CNN
F 2 "" H 7050 700 50  0001 C CNN
F 3 "" H 7050 700 50  0001 C CNN
	1    7050 700 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FCF231C
P 7050 900
F 0 "#PWR?" H 7050 650 50  0001 C CNN
F 1 "GND" H 7055 727 50  0000 C CNN
F 2 "" H 7050 900 50  0001 C CNN
F 3 "" H 7050 900 50  0001 C CNN
	1    7050 900 
	0    -1   -1   0   
$EndComp
Text GLabel 7050 800  2    50   Input ~ 0
LIN
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5FCF60B9
P 6850 1250
F 0 "J?" V 7004 1062 50  0000 R CNN
F 1 "Conn_01x03_Male" V 6913 1062 50  0000 R CNN
F 2 "" H 6850 1250 50  0001 C CNN
F 3 "~" H 6850 1250 50  0001 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FCF60BF
P 7050 1150
F 0 "#PWR?" H 7050 1000 50  0001 C CNN
F 1 "VCC" H 7065 1323 50  0000 C CNN
F 2 "" H 7050 1150 50  0001 C CNN
F 3 "" H 7050 1150 50  0001 C CNN
	1    7050 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FCF60C5
P 7050 1350
F 0 "#PWR?" H 7050 1100 50  0001 C CNN
F 1 "GND" H 7055 1177 50  0000 C CNN
F 2 "" H 7050 1350 50  0001 C CNN
F 3 "" H 7050 1350 50  0001 C CNN
	1    7050 1350
	0    -1   -1   0   
$EndComp
Text GLabel 7050 1250 2    50   Input ~ 0
LIN
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5FD0F1C5
P 7450 700
F 0 "J?" H 7558 881 50  0000 C CNN
F 1 "Conn_01x02_Male" H 7558 790 50  0000 C CNN
F 2 "" H 7450 700 50  0001 C CNN
F 3 "~" H 7450 700 50  0001 C CNN
	1    7450 700 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLML2060 Q?
U 1 1 5FD1BD93
P 2700 2400
F 0 "Q?" H 2904 2446 50  0000 L CNN
F 1 "IRLML2060" H 2904 2355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2900 2325 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml2060pbf.pdf?fileId=5546d462533600a401535664b7fb25ee" H 2700 2400 50  0001 L CNN
	1    2700 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD2CFA8
P 2800 2700
F 0 "#PWR?" H 2800 2450 50  0001 C CNN
F 1 "GND" H 2805 2527 50  0000 C CNN
F 2 "" H 2800 2700 50  0001 C CNN
F 3 "" H 2800 2700 50  0001 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FD2DD3E
P 2500 2550
F 0 "R?" H 2570 2596 50  0000 L CNN
F 1 "10K" H 2570 2505 50  0000 L CNN
F 2 "" V 2430 2550 50  0001 C CNN
F 3 "~" H 2500 2550 50  0001 C CNN
	1    2500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2700 2800 2700
Wire Wire Line
	2800 2600 2800 2700
Connection ~ 2800 2700
$Comp
L Diode:1N4148W D?
U 1 1 5FD40FA2
P 2800 2050
F 0 "D?" V 2754 2130 50  0000 L CNN
F 1 "1N4148W" V 2845 2130 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2800 1875 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2800 2050 50  0001 C CNN
	1    2800 2050
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FD29679
P 2800 1900
F 0 "#PWR?" H 2800 1750 50  0001 C CNN
F 1 "VCC" H 2815 2073 50  0000 C CNN
F 2 "" H 2800 1900 50  0001 C CNN
F 3 "" H 2800 1900 50  0001 C CNN
	1    2800 1900
	1    0    0    -1  
$EndComp
Text GLabel 2500 2400 0    50   Input ~ 0
Pump
$Comp
L Device:C C?
U 1 1 5FD72FC7
P 2650 2050
F 0 "C?" H 2765 2096 50  0000 L CNN
F 1 "33µF" H 2765 2005 50  0000 L CNN
F 2 "" H 2688 1900 50  0001 C CNN
F 3 "~" H 2650 2050 50  0001 C CNN
	1    2650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1900 2800 1900
Connection ~ 2800 1900
Wire Wire Line
	2650 2200 2800 2200
Connection ~ 2800 2200
$Comp
L Transistor_FET:IRLML2060 Q?
U 1 1 5FD983D5
P 3550 2400
F 0 "Q?" H 3754 2446 50  0000 L CNN
F 1 "IRLML2060" H 3754 2355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3750 2325 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml2060pbf.pdf?fileId=5546d462533600a401535664b7fb25ee" H 3550 2400 50  0001 L CNN
	1    3550 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD983DB
P 3650 2700
F 0 "#PWR?" H 3650 2450 50  0001 C CNN
F 1 "GND" H 3655 2527 50  0000 C CNN
F 2 "" H 3650 2700 50  0001 C CNN
F 3 "" H 3650 2700 50  0001 C CNN
	1    3650 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FD983E1
P 3350 2550
F 0 "R?" H 3420 2596 50  0000 L CNN
F 1 "10K" H 3420 2505 50  0000 L CNN
F 2 "" V 3280 2550 50  0001 C CNN
F 3 "~" H 3350 2550 50  0001 C CNN
	1    3350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2700 3650 2700
Wire Wire Line
	3650 2600 3650 2700
Connection ~ 3650 2700
$Comp
L Diode:1N4148W D?
U 1 1 5FD983EA
P 3650 2050
F 0 "D?" V 3604 2130 50  0000 L CNN
F 1 "1N4148W" V 3695 2130 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 3650 1875 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 3650 2050 50  0001 C CNN
	1    3650 2050
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FD983F0
P 3650 1900
F 0 "#PWR?" H 3650 1750 50  0001 C CNN
F 1 "VCC" H 3665 2073 50  0000 C CNN
F 2 "" H 3650 1900 50  0001 C CNN
F 3 "" H 3650 1900 50  0001 C CNN
	1    3650 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD983F7
P 3500 2050
F 0 "C?" H 3615 2096 50  0000 L CNN
F 1 "33µF" H 3615 2005 50  0000 L CNN
F 2 "" H 3538 1900 50  0001 C CNN
F 3 "~" H 3500 2050 50  0001 C CNN
	1    3500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1900 3650 1900
Connection ~ 3650 1900
Wire Wire Line
	3500 2200 3650 2200
Connection ~ 3650 2200
Text GLabel 3350 2400 0    50   Input ~ 0
Valve
Text GLabel 3650 1900 2    50   Input ~ 0
VALVE_OUT
Text GLabel 3650 2200 2    50   Input ~ 0
VALVE_GND
Text GLabel 2800 2200 2    50   Input ~ 0
PUMP_GND
Text GLabel 2800 1900 2    50   Input ~ 0
PUMP_OUT
Text GLabel 7650 700  2    50   Input ~ 0
VALVE_OUT
Text GLabel 7650 800  2    50   Input ~ 0
VALVE_GND
Wire Notes Line
	4300 1650 4300 3050
Wire Notes Line
	500  3050 4300 3050
Text Notes 2100 3000 0    50   ~ 0
MOSFET :\nIRLML2402GTRPBF
$Comp
L Device:R_Shunt R?
U 1 1 5FE1EA2E
P 4550 2350
F 0 "R?" H 4462 2396 50  0000 R CNN
F 1 "R_Shunt" H 4462 2305 50  0000 R CNN
F 2 "" V 4480 2350 50  0001 C CNN
F 3 "~" H 4550 2350 50  0001 C CNN
	1    4550 2350
	1    0    0    -1  
$EndComp
Text GLabel 4550 2150 1    50   Input ~ 0
PUMP_OUT
Text GLabel 4550 2550 3    50   Input ~ 0
PUMP_GND
$Comp
L power:+3.3V #PWR?
U 1 1 5FE32495
P 4900 2050
F 0 "#PWR?" H 4900 1900 50  0001 C CNN
F 1 "+3.3V" H 4915 2223 50  0000 C CNN
F 2 "" H 4900 2050 50  0001 C CNN
F 3 "" H 4900 2050 50  0001 C CNN
	1    4900 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE3632D
P 4900 2650
F 0 "#PWR?" H 4900 2400 50  0001 C CNN
F 1 "GND" H 4905 2477 50  0000 C CNN
F 2 "" H 4900 2650 50  0001 C CNN
F 3 "" H 4900 2650 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE370B9
P 5300 2500
F 0 "R?" H 5370 2546 50  0000 L CNN
F 1 "a determiner" H 5370 2455 50  0000 L CNN
F 2 "" V 5230 2500 50  0001 C CNN
F 3 "~" H 5300 2500 50  0001 C CNN
	1    5300 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE388BE
P 5300 2650
F 0 "#PWR?" H 5300 2400 50  0001 C CNN
F 1 "GND" H 5305 2477 50  0000 C CNN
F 2 "" H 5300 2650 50  0001 C CNN
F 3 "" H 5300 2650 50  0001 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Current:INA139 U?
U 1 1 5FE2F5C7
P 5000 2350
F 0 "U?" H 5344 2396 50  0000 L CNN
F 1 "INA139" H 5344 2305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5000 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina169.pdf" H 5000 2355 50  0001 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
Text GLabel 5300 2350 2    50   Input ~ 0
Va
Text GLabel 1750 1300 2    50   Input ~ 0
Va
$EndSCHEMATC
