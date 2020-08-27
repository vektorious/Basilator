EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Basilator"
Date "2020-07-15"
Rev "0.1.1"
Comp "Alexander Kutschera CC-BY-SA 4.0"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5F0F4EEE
P 9050 2800
F 0 "#PWR?" H 9050 2550 50  0001 C CNN
F 1 "GND" H 9055 2627 50  0000 C CNN
F 2 "" H 9050 2800 50  0001 C CNN
F 3 "" H 9050 2800 50  0001 C CNN
	1    9050 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F0F546B
P 9350 1400
F 0 "D?" H 9343 1617 50  0000 C CNN
F 1 "LED" H 9343 1526 50  0000 C CNN
F 2 "" H 9350 1400 50  0001 C CNN
F 3 "~" H 9350 1400 50  0001 C CNN
	1    9350 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F0F5FB2
P 9350 1800
F 0 "D?" H 9343 2017 50  0000 C CNN
F 1 "LED" H 9343 1926 50  0000 C CNN
F 2 "" H 9350 1800 50  0001 C CNN
F 3 "~" H 9350 1800 50  0001 C CNN
	1    9350 1800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW?
U 1 1 5F0F272B
P 10300 1600
F 0 "SW?" H 10300 1885 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 10300 1794 50  0000 C CNN
F 2 "" H 10300 1600 50  0001 C CNN
F 3 "~" H 10300 1600 50  0001 C CNN
	1    10300 1600
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW?
U 1 1 5F0F2E32
P 8350 2350
F 0 "SW?" H 8350 2635 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 8350 2544 50  0000 C CNN
F 2 "" H 8350 2350 50  0001 C CNN
F 3 "~" H 8350 2350 50  0001 C CNN
	1    8350 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	10100 1700 9950 1700
Wire Wire Line
	9950 1700 9950 1800
Wire Wire Line
	9950 1800 9650 1800
Wire Wire Line
	10100 1500 9950 1500
Wire Wire Line
	9950 1500 9950 1400
Wire Wire Line
	9950 1400 9500 1400
Wire Wire Line
	9950 1500 9950 1600
Connection ~ 9950 1500
Wire Wire Line
	9650 1600 9650 1800
Connection ~ 9650 1800
Wire Wire Line
	9650 1800 9500 1800
Wire Wire Line
	9200 1400 9050 1400
Wire Wire Line
	9050 1400 9050 1800
Wire Wire Line
	9050 1800 9200 1800
Wire Wire Line
	9050 1800 9050 2150
Connection ~ 9050 1800
$Comp
L Transistor_FET:IRLB8721PBF Q?
U 1 1 5F0FB05F
P 8950 2350
F 0 "Q?" H 9154 2396 50  0000 L CNN
F 1 "IRLB8721PBF" H 9154 2305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9200 2275 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlb8721pbf.pdf?fileId=5546d462533600a40153566056732591" H 8950 2350 50  0001 L CNN
	1    8950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2550 9050 2700
$Comp
L power:+12V #PWR?
U 1 1 5F0F486F
P 10700 2800
F 0 "#PWR?" H 10700 2650 50  0001 C CNN
F 1 "+12V" H 10715 2973 50  0000 C CNN
F 2 "" H 10700 2800 50  0001 C CNN
F 3 "" H 10700 2800 50  0001 C CNN
	1    10700 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10500 1600 10700 1600
Wire Wire Line
	10700 1600 10700 2800
$Comp
L Device:R R?
U 1 1 5F1074E0
P 8750 2550
F 0 "R?" H 8820 2596 50  0000 L CNN
F 1 "R" H 8820 2505 50  0000 L CNN
F 2 "" V 8680 2550 50  0001 C CNN
F 3 "~" H 8750 2550 50  0001 C CNN
	1    8750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2350 8750 2400
Wire Wire Line
	8750 2700 9050 2700
Connection ~ 9050 2700
Wire Wire Line
	9050 2700 9050 2800
Wire Wire Line
	8750 2350 8550 2350
Connection ~ 8750 2350
Wire Notes Line
	8650 2750 10800 2750
Wire Notes Line
	10800 2750 10800 1050
Wire Notes Line
	10800 1050 8650 1050
Wire Notes Line
	8650 1050 8650 2750
Text Notes 8800 1000 0    197  ~ 0
LED-module
Text HLabel 8150 2450 0    79   Input ~ 0
PWM-pin
$Comp
L Device:R R?
U 1 1 5F1D63FE
P 8150 2000
F 0 "R?" H 8220 2046 50  0000 L CNN
F 1 "R" H 8220 1955 50  0000 L CNN
F 2 "" V 8080 2000 50  0001 C CNN
F 3 "~" H 8150 2000 50  0001 C CNN
	1    8150 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F1D7DA0
P 7850 2000
F 0 "R?" H 7920 2046 50  0000 L CNN
F 1 "R" H 7920 1955 50  0000 L CNN
F 2 "" V 7780 2000 50  0001 C CNN
F 3 "~" H 7850 2000 50  0001 C CNN
	1    7850 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1E3575
P 8300 2000
F 0 "#PWR?" H 8300 1750 50  0001 C CNN
F 1 "GND" V 8305 1872 50  0000 R CNN
F 2 "" H 8300 2000 50  0001 C CNN
F 3 "" H 8300 2000 50  0001 C CNN
	1    8300 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 2000 8000 2250
Wire Wire Line
	8000 2250 8150 2250
Connection ~ 8000 2000
$Comp
L power:+3V3 #PWR?
U 1 1 5F1E410C
P 7700 2000
F 0 "#PWR?" H 7700 1850 50  0001 C CNN
F 1 "+3V3" V 7715 2128 50  0000 L CNN
F 2 "" H 7700 2000 50  0001 C CNN
F 3 "" H 7700 2000 50  0001 C CNN
	1    7700 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5F1E54D6
P 9800 1600
F 0 "D?" H 9800 1817 50  0000 C CNN
F 1 "D_Schottky" H 9800 1726 50  0000 C CNN
F 2 "" H 9800 1600 50  0001 C CNN
F 3 "~" H 9800 1600 50  0001 C CNN
	1    9800 1600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLB8721PBF Q?
U 1 1 5F1EBF23
P 9200 4750
F 0 "Q?" H 9404 4796 50  0000 L CNN
F 1 "IRLB8721PBF" H 9404 4705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9450 4675 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlb8721pbf.pdf?fileId=5546d462533600a40153566056732591" H 9200 4750 50  0001 L CNN
	1    9200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4950 9300 5100
$Comp
L Device:R R?
U 1 1 5F1EBF2E
P 9000 4950
F 0 "R?" H 9070 4996 50  0000 L CNN
F 1 "R" H 9070 4905 50  0000 L CNN
F 2 "" V 8930 4950 50  0001 C CNN
F 3 "~" H 9000 4950 50  0001 C CNN
	1    9000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4750 9000 4800
Wire Wire Line
	9000 5100 9300 5100
Connection ~ 9300 5100
Wire Wire Line
	9300 5100 9300 5200
Wire Wire Line
	9000 4750 8800 4750
Connection ~ 9000 4750
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5F1F470C
P 9850 4350
F 0 "J?" V 9912 4394 50  0000 L CNN
F 1 "Conn_01x02_Male" V 10003 4394 50  0000 L CNN
F 2 "" H 9850 4350 50  0001 C CNN
F 3 "~" H 9850 4350 50  0001 C CNN
	1    9850 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 4550 9750 4550
Wire Wire Line
	9850 4550 9850 5200
$Comp
L power:GND #PWR?
U 1 1 5F20141D
P 9300 5200
F 0 "#PWR?" H 9300 4950 50  0001 C CNN
F 1 "GND" H 9305 5027 50  0000 C CNN
F 2 "" H 9300 5200 50  0001 C CNN
F 3 "" H 9300 5200 50  0001 C CNN
	1    9300 5200
	1    0    0    -1  
$EndComp
Wire Notes Line
	8900 4000 8900 5150
Wire Notes Line
	8900 5150 10600 5150
Wire Notes Line
	10600 5150 10600 4000
Wire Notes Line
	10600 4000 8900 4000
$Comp
L Switch:SW_SPDT_MSM SW?
U 1 1 5F20CF64
P 8600 4750
F 0 "SW?" H 8600 5035 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 8600 4944 50  0000 C CNN
F 2 "" H 8600 4750 50  0001 C CNN
F 3 "~" H 8600 4750 50  0001 C CNN
	1    8600 4750
	-1   0    0    1   
$EndComp
Text HLabel 8400 4850 0    79   Input ~ 0
PWM-pin
Wire Wire Line
	8250 4650 8400 4650
$Comp
L power:+3V3 #PWR?
U 1 1 5F2228D9
P 8250 4650
F 0 "#PWR?" H 8250 4500 50  0001 C CNN
F 1 "+3V3" H 8265 4823 50  0000 C CNN
F 2 "" H 8250 4650 50  0001 C CNN
F 3 "" H 8250 4650 50  0001 C CNN
	1    8250 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F228461
P 9850 5200
F 0 "#PWR?" H 9850 5050 50  0001 C CNN
F 1 "+5V" H 9865 5373 50  0000 C CNN
F 2 "" H 9850 5200 50  0001 C CNN
F 3 "" H 9850 5200 50  0001 C CNN
	1    9850 5200
	-1   0    0    1   
$EndComp
Text Notes 8650 3850 0    197  ~ 0
pump-module
$EndSCHEMATC
