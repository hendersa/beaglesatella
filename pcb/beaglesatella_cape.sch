EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BeagleSatella Cape and Adapter Board"
Date ""
Rev "A"
Comp "https://beaglesatella.org"
Comment1 ""
Comment2 "C1-C9 decoupling capacitors are 0.1uF"
Comment3 "R1-R4 pull-up resistors are 10K"
Comment4 "U5 Pin 1 must be low at BBB power-up or BBB will freeze and not boot"
$EndDescr
$Comp
L power:GNDD #PWR01
U 1 1 5589785A
P 10075 6125
F 0 "#PWR01" H 10075 5875 50  0001 C CNN
F 1 "GNDD" H 10075 5975 50  0000 C CNN
F 2 "" H 10075 6125 60  0000 C CNN
F 3 "" H 10075 6125 60  0000 C CNN
	1    10075 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	10325 5925 10475 5925
Wire Wire Line
	10475 5925 10475 6025
Wire Wire Line
	9675 5925 9825 5925
Wire Wire Line
	9825 6025 9675 6025
Connection ~ 9675 6025
Wire Wire Line
	10325 6025 10475 6025
Connection ~ 10475 6025
$Comp
L power:GNDD #PWR02
U 1 1 558978D3
P 10075 3625
F 0 "#PWR02" H 10075 3375 50  0001 C CNN
F 1 "GNDD" H 10075 3475 50  0000 C CNN
F 2 "" H 10075 3625 60  0000 C CNN
F 3 "" H 10075 3625 60  0000 C CNN
	1    10075 3625
	-1   0    0    1   
$EndComp
$Comp
L power:GNDD #PWR04
U 1 1 558979C1
P 9700 875
F 0 "#PWR04" H 9700 625 50  0001 C CNN
F 1 "GNDD" H 9700 725 50  0000 C CNN
F 2 "" H 9700 875 60  0000 C CNN
F 3 "" H 9700 875 60  0000 C CNN
	1    9700 875 
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR05
U 1 1 558979E8
P 10475 875
F 0 "#PWR05" H 10475 625 50  0001 C CNN
F 1 "GNDD" H 10475 725 50  0000 C CNN
F 2 "" H 10475 875 60  0000 C CNN
F 3 "" H 10475 875 60  0000 C CNN
	1    10475 875 
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 55897A67
P 10475 3625
F 0 "#PWR06" H 10475 3475 50  0001 C CNN
F 1 "+3V3" H 10475 3765 50  0000 C CNN
F 2 "" H 10475 3625 60  0000 C CNN
F 3 "" H 10475 3625 60  0000 C CNN
	1    10475 3625
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 55897A7F
P 10675 3625
F 0 "#PWR07" H 10675 3475 50  0001 C CNN
F 1 "+5V" H 10675 3765 50  0000 C CNN
F 2 "" H 10675 3625 60  0000 C CNN
F 3 "" H 10675 3625 60  0000 C CNN
	1    10675 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	10325 3925 10475 3925
Wire Wire Line
	10475 3925 10475 3625
Wire Wire Line
	10325 4025 10675 4025
Wire Wire Line
	10675 4025 10675 3625
Wire Wire Line
	10925 3625 10925 4125
Wire Wire Line
	10925 4125 10325 4125
$Comp
L power:+3.3V #PWR08
U 1 1 55897EE7
P 9675 3625
F 0 "#PWR08" H 9675 3475 50  0001 C CNN
F 1 "+3V3" H 9675 3765 50  0000 C CNN
F 2 "" H 9675 3625 60  0000 C CNN
F 3 "" H 9675 3625 60  0000 C CNN
	1    9675 3625
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 55897EF8
P 9475 3625
F 0 "#PWR09" H 9475 3475 50  0001 C CNN
F 1 "+5V" H 9475 3765 50  0000 C CNN
F 2 "" H 9475 3625 60  0000 C CNN
F 3 "" H 9475 3625 60  0000 C CNN
	1    9475 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	9825 3925 9675 3925
Wire Wire Line
	9675 3925 9675 3625
Wire Wire Line
	9825 4025 9475 4025
Wire Wire Line
	9475 4025 9475 3625
Wire Wire Line
	9825 4125 9225 4125
Wire Wire Line
	9225 4125 9225 3625
$Comp
L pwr_BeagleBone:SYS_5V #PWR010
U 1 1 55898497
P 10925 3625
F 0 "#PWR010" H 10925 3475 50  0001 C CNN
F 1 "SYS_5V" H 10925 3765 50  0000 C CNN
F 2 "" H 10925 3625 60  0000 C CNN
F 3 "" H 10925 3625 60  0000 C CNN
	1    10925 3625
	1    0    0    -1  
$EndComp
$Comp
L pwr_BeagleBone:SYS_5V #PWR011
U 1 1 558984AF
P 9225 3625
F 0 "#PWR011" H 9225 3475 50  0001 C CNN
F 1 "SYS_5V" H 9225 3765 50  0000 C CNN
F 2 "" H 9225 3625 60  0000 C CNN
F 3 "" H 9225 3625 60  0000 C CNN
	1    9225 3625
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x23_Odd_Even P9
U 1 1 55DF7DBA
P 10025 4925
F 0 "P9" H 10025 6125 50  0000 C CNN
F 1 "BeagleBone_Black_Header" V 10075 4975 50  0000 C CNN
F 2 "Socket_BeagleBone_Black:Socket_BeagleBone_Black" H 10025 4075 60  0001 C CNN
F 3 "" H 10025 4075 60  0000 C CNN
	1    10025 4925
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x23_Odd_Even P8
U 1 1 55DF7DE1
P 10025 1975
F 0 "P8" H 10025 3175 50  0000 C CNN
F 1 "BeagleBone_Black_Header" V 10075 2025 50  0000 C CNN
F 2 "Socket_BeagleBone_Black:Socket_BeagleBone_Black" H 10025 1125 60  0001 C CNN
F 3 "" H 10025 1125 60  0000 C CNN
	1    10025 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	9675 6025 9675 5925
Wire Wire Line
	10475 6025 10475 6125
Entry Wire Line
	1950 1125 2050 1025
Entry Wire Line
	1950 1225 2050 1125
Entry Wire Line
	1950 1325 2050 1225
Entry Wire Line
	1950 1425 2050 1325
Entry Wire Line
	950  1025 1050 1125
Entry Wire Line
	950  1125 1050 1225
Entry Wire Line
	950  1225 1050 1325
Entry Wire Line
	950  1325 1050 1425
Wire Wire Line
	1050 1125 1250 1125
Text Label 1100 1125 0    50   ~ 0
PA0
Wire Wire Line
	1050 1225 1250 1225
Text Label 1100 1225 0    50   ~ 0
PA2
Wire Wire Line
	1050 1325 1250 1325
Text Label 1100 1325 0    50   ~ 0
PA4
Wire Wire Line
	1050 1425 1250 1425
Text Label 1100 1425 0    50   ~ 0
PA6
Text Label 1250 1525 2    50   ~ 0
~PAWR
Text Label 1750 1125 0    50   ~ 0
PA1
Wire Wire Line
	1750 1125 1950 1125
Wire Wire Line
	1750 1425 1950 1425
Wire Wire Line
	1750 1325 1950 1325
Wire Wire Line
	1750 1225 1950 1225
Text Label 1750 1225 0    50   ~ 0
PA3
Text Label 1750 1325 0    50   ~ 0
PA5
Text Label 1750 1425 0    50   ~ 0
PA7
Text Label 1750 1525 0    50   ~ 0
~PARD
Entry Wire Line
	950  1725 1050 1625
Entry Wire Line
	950  1825 1050 1725
Entry Wire Line
	950  1925 1050 1825
Entry Wire Line
	950  2025 1050 1925
Entry Wire Line
	1950 1625 2050 1725
Entry Wire Line
	1950 1725 2050 1825
Entry Wire Line
	1950 1825 2050 1925
Entry Wire Line
	1950 1925 2050 2025
Text Label 1100 1625 0    50   ~ 0
D0
Text Label 1100 1725 0    50   ~ 0
D2
Text Label 1100 1825 0    50   ~ 0
D4
Text Label 1100 1925 0    50   ~ 0
D6
Wire Wire Line
	1050 1625 1250 1625
Wire Wire Line
	1050 1725 1250 1725
Wire Wire Line
	1050 1825 1250 1825
Wire Wire Line
	1050 1925 1250 1925
Text Label 1750 1625 0    50   ~ 0
D1
Text Label 1750 1725 0    50   ~ 0
D3
Text Label 1750 1825 0    50   ~ 0
D5
Text Label 1750 1925 0    50   ~ 0
D7
Wire Wire Line
	1750 1625 1950 1625
Wire Wire Line
	1750 1725 1950 1725
Wire Wire Line
	1750 1825 1950 1825
Wire Wire Line
	1750 1925 1950 1925
Wire Wire Line
	1250 2025 1050 2025
Text Label 1750 2325 0    50   ~ 0
~IRQ
$Comp
L BeagleSatella:74LVC245AN U5
U 1 1 5E5F6655
P 7600 3150
F 0 "U5" H 7600 3150 60  0000 C CNN
F 1 "74LVC245AN" H 7600 3831 60  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 7600 3831 60  0001 C CNN
F 3 "" H 7600 3150 60  0001 C CNN
	1    7600 3150
	1    0    0    -1  
$EndComp
Wire Bus Line
	950  875  2050 875 
$Comp
L power:GNDD #PWR0101
U 1 1 5E65558D
P 1500 2550
F 0 "#PWR0101" H 1500 2300 50  0001 C CNN
F 1 "GNDD" H 1504 2395 50  0000 C CNN
F 2 "" H 1500 2550 50  0001 C CNN
F 3 "" H 1500 2550 50  0001 C CNN
	1    1500 2550
	1    0    0    -1  
$EndComp
NoConn ~ 1250 2325
NoConn ~ 1250 2125
NoConn ~ 1750 2125
Text Label 1750 2025 0    50   ~ 0
VCC
Text Label 1750 2225 0    50   ~ 0
EXPAND
Text Label 1750 2125 0    50   ~ 0
DOT
Text Label 1750 2425 0    50   ~ 0
SR
Text Label 1250 2425 2    50   ~ 0
SL
Text Label 1250 2325 2    50   ~ 0
MONO
Text Label 1250 2225 2    50   ~ 0
GND
Wire Wire Line
	1250 2225 1000 2225
Wire Wire Line
	1050 2025 1050 2125
Text Label 4025 1675 2    50   ~ 0
PA7
Text Label 4025 1575 2    50   ~ 0
PA6
Text Label 4025 1475 2    50   ~ 0
PA5
Text Label 4025 1375 2    50   ~ 0
PA4
Text Label 4025 1275 2    50   ~ 0
PA3
Text Label 4025 1175 2    50   ~ 0
PA2
Text Label 4025 1075 2    50   ~ 0
PA1
Text Label 4025 975  2    50   ~ 0
PA0
Entry Wire Line
	3725 1175 3825 1275
Entry Wire Line
	3725 1075 3825 1175
Entry Wire Line
	3725 1775 3825 1875
Entry Wire Line
	3725 1675 3825 1775
Entry Wire Line
	3725 1575 3825 1675
Entry Wire Line
	3725 1475 3825 1575
Entry Wire Line
	3725 1375 3825 1475
Entry Wire Line
	3725 1275 3825 1375
Wire Wire Line
	1750 2225 2000 2225
Wire Wire Line
	1000 2550 1500 2550
Connection ~ 1500 2550
Wire Wire Line
	1500 2550 2000 2550
Text Label 1250 2025 2    50   ~ 0
~RESET
Wire Wire Line
	7100 3650 7100 3825
Wire Wire Line
	7100 3825 7500 3825
Wire Wire Line
	8100 3825 8100 3650
Text Label 7100 2650 2    50   ~ 0
D7
Text Label 7100 2750 2    50   ~ 0
D6
Text Label 7100 2850 2    50   ~ 0
D5
Text Label 7100 2950 2    50   ~ 0
D4
Text Label 7100 3050 2    50   ~ 0
D3
Text Label 7100 3150 2    50   ~ 0
D2
Text Label 7100 3250 2    50   ~ 0
D1
Text Label 7100 3350 2    50   ~ 0
D0
Entry Wire Line
	6900 3350 7000 3250
Entry Wire Line
	6900 2750 7000 2650
Entry Wire Line
	6900 3250 7000 3150
Entry Wire Line
	6900 3150 7000 3050
Entry Wire Line
	6900 3050 7000 2950
Entry Wire Line
	6900 2950 7000 2850
Entry Wire Line
	6900 2850 7000 2750
Entry Wire Line
	6900 3450 7000 3350
Wire Wire Line
	8150 3550 8100 3550
$Comp
L power:GNDD #PWR0102
U 1 1 5EA6807C
P 7500 3825
F 0 "#PWR0102" H 7500 3575 50  0001 C CNN
F 1 "GNDD" H 7504 3670 50  0000 C CNN
F 2 "" H 7500 3825 50  0001 C CNN
F 3 "" H 7500 3825 50  0001 C CNN
	1    7500 3825
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 5EA8269E
P 7725 4025
F 0 "#PWR0103" H 7725 3875 50  0001 C CNN
F 1 "+3V3" H 7725 4165 50  0000 C CNN
F 2 "" H 7725 4025 60  0000 C CNN
F 3 "" H 7725 4025 60  0000 C CNN
	1    7725 4025
	-1   0    0    1   
$EndComp
Entry Wire Line
	8325 2650 8425 2550
Entry Wire Line
	8325 2750 8425 2650
Entry Wire Line
	8325 2850 8425 2750
Entry Wire Line
	8325 2950 8425 2850
Entry Wire Line
	8325 3050 8425 2950
Entry Wire Line
	8325 3150 8425 3050
Entry Wire Line
	8325 3250 8425 3150
Entry Wire Line
	8325 3350 8425 3250
Text Label 8100 2650 0    50   ~ 0
D7_3V
Text Label 8100 2750 0    50   ~ 0
D6_3V
Text Label 8100 2850 0    50   ~ 0
D5_3V
Text Label 8100 2950 0    50   ~ 0
D4_3V
Text Label 8100 3050 0    50   ~ 0
D3_3V
Text Label 8100 3150 0    50   ~ 0
D2_3V
Text Label 8100 3250 0    50   ~ 0
D1_3V
Text Label 8100 3350 0    50   ~ 0
D0_3V
Wire Wire Line
	8100 2650 8325 2650
Wire Wire Line
	8100 2750 8325 2750
Wire Wire Line
	8100 2850 8325 2850
Wire Wire Line
	8100 2950 8325 2950
Wire Wire Line
	8100 3050 8325 3050
Wire Wire Line
	8100 3150 8325 3150
Wire Wire Line
	8100 3250 8325 3250
Wire Wire Line
	8100 3350 8325 3350
$Comp
L BeagleSatella:74LVC245AN U4
U 1 1 5EB8F494
P 7600 1275
F 0 "U4" H 7600 1275 60  0000 C CNN
F 1 "74LVC245AN" H 7600 1956 60  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 7600 1956 60  0001 C CNN
F 3 "" H 7600 1275 60  0001 C CNN
	1    7600 1275
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5EB8F4C1
P 7025 2150
F 0 "#PWR0105" H 7025 2000 50  0001 C CNN
F 1 "+3V3" H 7025 2290 50  0000 C CNN
F 2 "" H 7025 2150 60  0000 C CNN
F 3 "" H 7025 2150 60  0000 C CNN
	1    7025 2150
	-1   0    0    1   
$EndComp
Entry Wire Line
	8450 775  8550 675 
Entry Wire Line
	8450 875  8550 775 
Entry Wire Line
	8450 975  8550 875 
Entry Wire Line
	8450 1075 8550 975 
Entry Wire Line
	8450 1175 8550 1075
Entry Wire Line
	8450 1275 8550 1175
Text Label 8100 975  0    50   ~ 0
PA5_3V
Text Label 8100 1075 0    50   ~ 0
PA4_3V
Text Label 8100 1175 0    50   ~ 0
PA3_3V
Text Label 8100 1275 0    50   ~ 0
PA2_3V
Text Label 8100 1375 0    50   ~ 0
PA1_3V
Text Label 8100 1475 0    50   ~ 0
PA0_3V
$Comp
L Device:C_Small C8
U 1 1 5ED4D68D
P 7725 3925
F 0 "C8" H 7817 3925 50  0000 L CNN
F 1 "0.1uF" H 7817 3925 50  0001 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7725 3925 50  0001 C CNN
F 3 "~" H 7725 3925 50  0001 C CNN
	1    7725 3925
	1    0    0    -1  
$EndComp
Connection ~ 7725 3825
Wire Wire Line
	7725 3825 8100 3825
Connection ~ 7500 3825
Wire Wire Line
	7500 3825 7725 3825
Wire Wire Line
	8150 3550 8150 4025
Wire Wire Line
	7725 4025 8150 4025
$Comp
L BeagleSatella:74LVC245AN U6
U 1 1 5EE7BD58
P 7600 5125
F 0 "U6" H 7600 5150 60  0000 C CNN
F 1 "74LVC245AN" H 7600 5806 60  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 7600 5806 60  0001 C CNN
F 3 "" H 7600 5125 60  0001 C CNN
	1    7600 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5625 7100 5800
Wire Wire Line
	7100 5800 7500 5800
Wire Wire Line
	8100 5800 8100 5625
Wire Wire Line
	8150 5525 8100 5525
$Comp
L power:GNDD #PWR0106
U 1 1 5EE7BD7B
P 7500 5800
F 0 "#PWR0106" H 7500 5550 50  0001 C CNN
F 1 "GNDD" H 7504 5645 50  0000 C CNN
F 2 "" H 7500 5800 50  0001 C CNN
F 3 "" H 7500 5800 50  0001 C CNN
	1    7500 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5EE7BD81
P 7050 6000
F 0 "#PWR0107" H 7050 5850 50  0001 C CNN
F 1 "+3V3" H 7050 6140 50  0000 C CNN
F 2 "" H 7050 6000 60  0000 C CNN
F 3 "" H 7050 6000 60  0000 C CNN
	1    7050 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 5525 7050 5525
$Comp
L Device:C_Small C9
U 1 1 5EE7BDA1
P 7725 5900
F 0 "C9" H 7817 5900 50  0000 L CNN
F 1 "0.1uF" H 7817 5900 50  0001 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7725 5900 50  0001 C CNN
F 3 "~" H 7725 5900 50  0001 C CNN
	1    7725 5900
	1    0    0    -1  
$EndComp
Connection ~ 7725 5800
Wire Wire Line
	7725 5800 8100 5800
Connection ~ 7500 5800
Wire Wire Line
	7500 5800 7725 5800
Wire Wire Line
	7050 5525 7050 6000
Wire Wire Line
	7050 6000 7725 6000
Connection ~ 7725 6000
Wire Wire Line
	8150 5525 8150 6000
Wire Wire Line
	7725 6000 8150 6000
Connection ~ 7050 6000
$Comp
L Device:C_Small C7
U 1 1 5EE8ED56
P 7750 2050
F 0 "C7" H 7842 2050 50  0000 L CNN
F 1 "0.1uF" H 7842 2050 50  0001 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7750 2050 50  0001 C CNN
F 3 "~" H 7750 2050 50  0001 C CNN
	1    7750 2050
	1    0    0    -1  
$EndComp
Entry Wire Line
	6675 875  6775 775 
Entry Wire Line
	6675 1275 6775 1175
Entry Wire Line
	6675 1175 6775 1075
Entry Wire Line
	6675 1075 6775 975 
Entry Wire Line
	6675 1575 6775 1475
Entry Wire Line
	6675 975  6775 875 
Text Label 7100 1475 2    50   ~ 0
PA0_5V
Text Label 7100 1375 2    50   ~ 0
PA1_5V
Text Label 7100 1275 2    50   ~ 0
PA2_5V
Text Label 7100 1175 2    50   ~ 0
PA3_5V
Text Label 7100 1075 2    50   ~ 0
PA4_5V
Text Label 7100 975  2    50   ~ 0
PA5_5V
Text GLabel 8575 5225 2    39   Output ~ 0
~RESET_3V
Text GLabel 8575 5325 2    39   Output ~ 0
SFC_VCC_3V
Text Label 9825 5025 2    50   ~ 0
D7_IN_3V
Text Label 9825 5825 2    50   ~ 0
D6_IN_3V
Text Label 9825 5125 2    50   ~ 0
D5_IN_3V
Text Label 9825 5225 2    50   ~ 0
D1_IN_3V
Text Label 9825 5325 2    50   ~ 0
D0_IN_3V
Text Label 10325 5225 0    50   ~ 0
D2_IN_3V
Text Label 10325 5125 0    50   ~ 0
D3_IN_3V
Text Label 10325 2775 0    50   ~ 0
D7_3V
Text Label 10325 2875 0    50   ~ 0
D5_3V
Text Label 10325 2975 0    50   ~ 0
D3_3V
Text Label 10325 3075 0    50   ~ 0
D1_3V
Text Label 9825 2775 2    50   ~ 0
D6_3V
Text Label 9825 2875 2    50   ~ 0
D4_3V
Text Label 9825 2975 2    50   ~ 0
D2_3V
Text Label 9825 3075 2    50   ~ 0
D0_3V
Text Label 9825 2175 2    50   ~ 0
PA0_3V
Text Label 9825 2275 2    50   ~ 0
PA1_3V
Text Label 9825 1875 2    50   ~ 0
PA4_3V
Text Label 10325 2175 0    50   ~ 0
PA2_3V
Text Label 10325 2275 0    50   ~ 0
PA3_3V
Text Label 10325 1775 0    50   ~ 0
PA5_3V
Entry Wire Line
	9500 3175 9600 3075
Entry Wire Line
	9500 3075 9600 2975
Entry Wire Line
	9500 2975 9600 2875
Entry Wire Line
	9500 2875 9600 2775
Wire Wire Line
	9600 3075 9825 3075
Wire Wire Line
	9600 2975 9825 2975
Wire Wire Line
	9600 2875 9825 2875
Wire Wire Line
	9600 2775 9825 2775
Entry Wire Line
	10650 3175 10550 3075
Entry Wire Line
	10650 3075 10550 2975
Entry Wire Line
	10650 2975 10550 2875
Entry Wire Line
	10650 2875 10550 2775
Wire Wire Line
	10325 3075 10550 3075
Wire Wire Line
	10325 2975 10550 2975
Wire Wire Line
	10325 2875 10550 2875
Wire Wire Line
	10325 2775 10550 2775
Entry Wire Line
	9500 2275 9400 2175
Entry Wire Line
	9500 2175 9400 2075
Entry Wire Line
	9500 1875 9400 1775
Entry Wire Line
	10625 2275 10725 2175
Entry Wire Line
	10625 2175 10725 2075
Entry Wire Line
	10625 1775 10725 1675
Text GLabel 10600 2675 2    39   Input ~ 0
~RESET_3V
Text GLabel 10600 2575 2    39   Input ~ 0
SFC_VCC_3V
Text GLabel 9550 2675 0    39   Output ~ 0
~IRQ_3V
Entry Wire Line
	9375 5925 9475 5825
Entry Wire Line
	9375 5425 9475 5325
Entry Wire Line
	9375 5325 9475 5225
Entry Wire Line
	9375 5225 9475 5125
Entry Wire Line
	9375 5125 9475 5025
Entry Wire Line
	10875 5325 10775 5225
Entry Wire Line
	10875 5225 10775 5125
Wire Wire Line
	9475 5025 9825 5025
Wire Wire Line
	9825 5125 9475 5125
Wire Wire Line
	9475 5225 9825 5225
Wire Wire Line
	9475 5325 9825 5325
Wire Wire Line
	9475 5825 9825 5825
Wire Wire Line
	10325 5125 10775 5125
Wire Wire Line
	10325 5225 10775 5225
Wire Wire Line
	9825 3825 9825 3625
Wire Wire Line
	9825 3625 10075 3625
Wire Wire Line
	10325 3625 10325 3825
Connection ~ 10075 3625
Wire Wire Line
	10075 3625 10325 3625
Wire Wire Line
	1750 2025 1950 2025
Wire Wire Line
	1950 2025 1950 2125
Text GLabel 3700 1975 0    39   Output ~ 0
~IRQ
Text GLabel 875  2125 0    39   Output ~ 0
~RESET
Wire Wire Line
	1050 2125 875  2125
Text GLabel 2125 2325 2    39   Input ~ 0
~IRQ
Wire Wire Line
	1750 2325 2125 2325
Text Label 7100 5225 2    50   ~ 0
~RESET
Text Label 7100 5325 2    50   ~ 0
SFC_VCC
Wire Wire Line
	7100 2650 7000 2650
Wire Wire Line
	7100 2750 7000 2750
Wire Wire Line
	7100 2850 7000 2850
Wire Wire Line
	7100 2950 7000 2950
Wire Wire Line
	7100 3050 7000 3050
Wire Wire Line
	7100 3150 7000 3150
Wire Wire Line
	7100 3250 7000 3250
Wire Wire Line
	7100 3350 7000 3350
Text Label 10325 5825 0    50   ~ 0
D4_IN_3V
Entry Wire Line
	10775 5825 10875 5925
Wire Wire Line
	10775 5825 10325 5825
Text Label 5625 975  0    50   ~ 0
PA0_5V
Wire Wire Line
	5625 2875 5175 2875
Connection ~ 4975 2875
Wire Wire Line
	4975 2875 4875 2875
Connection ~ 5075 2875
Wire Wire Line
	5075 2875 4975 2875
Connection ~ 5175 2875
Wire Wire Line
	5175 2875 5075 2875
NoConn ~ 5625 2175
NoConn ~ 5625 2075
NoConn ~ 5625 1975
Text Label 5625 1075 0    50   ~ 0
PA1_5V
Text Label 5625 1175 0    50   ~ 0
PA2_5V
Text Label 5625 1275 0    50   ~ 0
PA3_5V
Text Label 5625 1375 0    50   ~ 0
PA4_5V
Text Label 5625 1475 0    50   ~ 0
PA5_5V
Entry Wire Line
	5925 1475 6025 1375
Entry Wire Line
	5925 1375 6025 1275
Entry Wire Line
	5925 1275 6025 1175
Entry Wire Line
	5925 1175 6025 1075
Entry Wire Line
	5925 1075 6025 975 
Entry Wire Line
	5925 975  6025 875 
Text Label 5625 1675 0    50   ~ 0
~PAWR_5V
Text Label 5625 1575 0    50   ~ 0
~PARD_5V
Text GLabel 3700 2075 0    39   Input ~ 0
~IRQ_3V
Text GLabel 3700 2175 0    39   Output ~ 0
~DATA_OE
Text Label 4025 1875 2    50   ~ 0
~PARD
Text Label 4025 1775 2    50   ~ 0
~PAWR
Entry Wire Line
	3725 975  3825 1075
Entry Wire Line
	3725 875  3825 975 
Wire Wire Line
	4025 975  3825 975 
Wire Wire Line
	4025 1075 3825 1075
Wire Wire Line
	3825 1175 4025 1175
Wire Wire Line
	3825 1275 4025 1275
Wire Wire Line
	3825 1375 4025 1375
Wire Wire Line
	3825 1475 4025 1475
Wire Wire Line
	3825 1575 4025 1575
Wire Wire Line
	3825 1675 4025 1675
Wire Wire Line
	3825 1775 4025 1775
Wire Wire Line
	3825 1875 4025 1875
Entry Wire Line
	950  1425 1050 1525
Entry Wire Line
	1950 1525 2050 1425
Wire Wire Line
	1050 1525 1250 1525
Wire Wire Line
	1750 1525 1950 1525
$Comp
L Device:R_Small_US R4
U 1 1 5F03F990
P 2975 2675
F 0 "R4" H 3043 2721 50  0001 L CNN
F 1 "10K" H 3043 2630 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 2975 2675 50  0001 C CNN
F 3 "~" H 2975 2675 50  0001 C CNN
	1    2975 2675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4475 2875 4575 2875
Connection ~ 4575 2875
$Comp
L power:GNDD #PWR0113
U 1 1 5F070420
P 4575 3300
F 0 "#PWR0113" H 4575 3050 50  0001 C CNN
F 1 "GNDD" H 4579 3145 50  0000 C CNN
F 2 "" H 4575 3300 50  0001 C CNN
F 3 "" H 4575 3300 50  0001 C CNN
	1    4575 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F5E0A27
P 4875 3075
F 0 "C1" H 4825 2775 50  0001 L CNN
F 1 "0.1uF" H 4967 3030 50  0001 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4875 3075 50  0001 C CNN
F 3 "~" H 4875 3075 50  0001 C CNN
	1    4875 3075
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F5E285E
P 4975 3200
F 0 "C2" H 4925 3025 50  0001 L CNN
F 1 "0.1uF" H 5067 3155 50  0001 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4975 3200 50  0001 C CNN
F 3 "~" H 4975 3200 50  0001 C CNN
	1    4975 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5F5E47B6
P 5075 3075
F 0 "C3" H 5025 2775 50  0001 L CNN
F 1 "0.1uF" H 5167 3030 50  0001 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5075 3075 50  0001 C CNN
F 3 "~" H 5075 3075 50  0001 C CNN
	1    5075 3075
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F5E6B76
P 5175 3200
F 0 "C4" H 5125 3025 50  0001 L CNN
F 1 "0.1uF" H 5267 3155 50  0001 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5175 3200 50  0001 C CNN
F 3 "~" H 5175 3200 50  0001 C CNN
	1    5175 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5F024F0A
P 2975 2575
F 0 "R3" H 3043 2621 50  0001 L CNN
F 1 "10K" H 3043 2530 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 2975 2575 50  0001 C CNN
F 3 "~" H 2975 2575 50  0001 C CNN
	1    2975 2575
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5F00D2B9
P 2975 2475
F 0 "R2" H 3043 2521 50  0001 L CNN
F 1 "10K" H 3043 2430 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 2975 2475 50  0001 C CNN
F 3 "~" H 2975 2475 50  0001 C CNN
	1    2975 2475
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5F8744CE
P 5625 2875
F 0 "#PWR0115" H 5625 2725 50  0001 C CNN
F 1 "+5V" H 5640 3048 50  0000 C CNN
F 2 "" H 5625 2875 50  0001 C CNN
F 3 "" H 5625 2875 50  0001 C CNN
	1    5625 2875
	0    1    1    0   
$EndComp
Text GLabel 6750 5225 0    39   Input ~ 0
~RESET
Wire Wire Line
	6750 5225 7100 5225
Wire Wire Line
	1025 4500 1025 5175
Wire Wire Line
	2300 4500 2300 5175
Wire Wire Line
	2150 4775 2150 5075
Wire Wire Line
	1150 4775 1150 5075
Wire Wire Line
	1150 5675 1050 5675
Wire Wire Line
	1150 5575 1050 5575
Wire Wire Line
	1150 5475 1050 5475
Wire Wire Line
	1050 5375 1150 5375
Wire Wire Line
	2150 5675 2475 5675
Wire Wire Line
	2150 5575 2475 5575
Wire Wire Line
	2150 5475 2475 5475
Wire Wire Line
	2150 5375 2475 5375
Entry Wire Line
	950  5775 1050 5675
Entry Wire Line
	950  5675 1050 5575
Entry Wire Line
	950  5575 1050 5475
Entry Wire Line
	950  5475 1050 5375
Text Label 1150 5675 2    50   ~ 0
D7
Text Label 1150 5575 2    50   ~ 0
D6
Text Label 1150 5475 2    50   ~ 0
D5
Text Label 1150 5375 2    50   ~ 0
D4
Connection ~ 2300 4500
Wire Wire Line
	2300 4500 2425 4500
Text GLabel 2425 4500 2    39   Input ~ 0
~DATA_OE
Text Label 2150 5675 0    50   ~ 0
D7_IN_3V
Text Label 2150 5575 0    50   ~ 0
D6_IN_3V
Text Label 2150 5475 0    50   ~ 0
D5_IN_3V
Text Label 2150 5375 0    50   ~ 0
D4_IN_3V
Entry Wire Line
	2475 5675 2575 5775
Entry Wire Line
	2475 5575 2575 5675
Entry Wire Line
	2475 5475 2575 5575
Entry Wire Line
	2475 5375 2575 5475
Connection ~ 2150 5175
Wire Wire Line
	2150 5275 2150 5175
Connection ~ 1150 5175
Wire Wire Line
	2300 5175 2150 5175
Wire Wire Line
	1025 4500 2300 4500
Wire Wire Line
	1150 5175 1025 5175
Wire Wire Line
	1150 5275 1150 5175
Connection ~ 2150 4775
Connection ~ 1150 4775
$Comp
L Device:C_Small C5
U 1 1 619C8C2E
P 1650 4775
F 0 "C5" V 1525 4775 50  0000 C CNN
F 1 "0.1uF" V 1513 4775 50  0001 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1650 4775 50  0001 C CNN
F 3 "~" H 1650 4775 50  0001 C CNN
	1    1650 4775
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 4775 1550 4775
Wire Wire Line
	1750 4775 2150 4775
$Comp
L power:GNDD #PWR0111
U 1 1 619C8C26
P 2150 4775
F 0 "#PWR0111" H 2150 4525 50  0001 C CNN
F 1 "GNDD" H 2154 4620 50  0000 C CNN
F 2 "" H 2150 4775 50  0001 C CNN
F 3 "" H 2150 4775 50  0001 C CNN
	1    2150 4775
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 619C8C20
P 1150 4775
F 0 "#PWR0110" H 1150 4625 50  0001 C CNN
F 1 "+5V" H 1165 4948 50  0000 C CNN
F 2 "" H 1150 4775 50  0001 C CNN
F 3 "" H 1150 4775 50  0001 C CNN
	1    1150 4775
	-1   0    0    -1  
$EndComp
$Comp
L BeagleSatella:74AHCT125 U2
U 1 1 619C8C1A
P 1650 5375
F 0 "U2" H 1650 5375 60  0000 C CNN
F 1 "74AHCT125" H 1650 4925 60  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1650 5856 60  0001 C CNN
F 3 "" H 1650 5375 60  0001 C CNN
	1    1650 5375
	1    0    0    1   
$EndComp
Wire Wire Line
	1150 6150 1050 6150
Wire Wire Line
	1150 6250 1050 6250
Wire Wire Line
	1150 6350 1050 6350
Wire Wire Line
	1050 6450 1150 6450
Wire Wire Line
	2150 6150 2475 6150
Wire Wire Line
	2150 6250 2475 6250
Wire Wire Line
	2150 6350 2475 6350
Wire Wire Line
	2150 6450 2475 6450
Entry Wire Line
	950  6050 1050 6150
Entry Wire Line
	950  6150 1050 6250
Entry Wire Line
	950  6250 1050 6350
Entry Wire Line
	950  6350 1050 6450
Text Label 1150 6150 2    50   ~ 0
D0
Text Label 1150 6250 2    50   ~ 0
D1
Text Label 1150 6350 2    50   ~ 0
D2
Text Label 1150 6450 2    50   ~ 0
D3
Connection ~ 2300 7225
Wire Wire Line
	2300 7225 2425 7225
Text GLabel 2425 7225 2    39   Input ~ 0
~DATA_OE
Text Label 2150 6150 0    50   ~ 0
D0_IN_3V
Text Label 2150 6250 0    50   ~ 0
D1_IN_3V
Text Label 2150 6350 0    50   ~ 0
D2_IN_3V
Text Label 2150 6450 0    50   ~ 0
D3_IN_3V
Entry Wire Line
	2475 6150 2575 6050
Entry Wire Line
	2475 6250 2575 6150
Entry Wire Line
	2475 6350 2575 6250
Entry Wire Line
	2475 6450 2575 6350
Connection ~ 2150 6650
Wire Wire Line
	2150 6550 2150 6650
Connection ~ 1150 6650
Wire Wire Line
	2300 6650 2150 6650
Wire Wire Line
	2300 7225 2300 6650
Wire Wire Line
	1025 7225 2300 7225
Wire Wire Line
	1025 6650 1025 7225
Wire Wire Line
	1150 6650 1025 6650
Wire Wire Line
	1150 6550 1150 6650
Connection ~ 2150 6950
Wire Wire Line
	2150 6750 2150 6950
Connection ~ 1150 6950
Wire Wire Line
	1150 6750 1150 6950
$Comp
L Device:C_Small C6
U 1 1 61658F3D
P 1650 6950
F 0 "C6" V 1525 6950 50  0000 C CNN
F 1 "0.1uF" V 1513 6950 50  0001 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1650 6950 50  0001 C CNN
F 3 "~" H 1650 6950 50  0001 C CNN
	1    1650 6950
	0    1    -1   0   
$EndComp
Wire Wire Line
	1150 6950 1550 6950
Wire Wire Line
	1750 6950 2150 6950
$Comp
L power:GNDD #PWR0109
U 1 1 616084F2
P 2150 6950
F 0 "#PWR0109" H 2150 6700 50  0001 C CNN
F 1 "GNDD" H 2154 6795 50  0000 C CNN
F 2 "" H 2150 6950 50  0001 C CNN
F 3 "" H 2150 6950 50  0001 C CNN
	1    2150 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 616065F2
P 1150 6950
F 0 "#PWR0108" H 1150 6800 50  0001 C CNN
F 1 "+5V" H 1165 7123 50  0000 C CNN
F 2 "" H 1150 6950 50  0001 C CNN
F 3 "" H 1150 6950 50  0001 C CNN
	1    1150 6950
	-1   0    0    1   
$EndComp
$Comp
L BeagleSatella:74AHCT125 U3
U 1 1 61603C9F
P 1650 6450
F 0 "U3" H 1650 6550 60  0000 C CNN
F 1 "74AHCT125" H 1650 6925 60  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1650 6931 60  0001 C CNN
F 3 "" H 1650 6450 60  0001 C CNN
	1    1650 6450
	1    0    0    -1  
$EndComp
NoConn ~ 9825 975 
NoConn ~ 9825 1075
NoConn ~ 9825 1175
NoConn ~ 9825 1275
NoConn ~ 9825 1375
NoConn ~ 9825 1675
NoConn ~ 9825 1775
NoConn ~ 10325 975 
NoConn ~ 10325 1075
NoConn ~ 10325 1175
NoConn ~ 10325 1275
NoConn ~ 10325 1375
NoConn ~ 10325 1475
NoConn ~ 10325 1675
NoConn ~ 10325 1875
NoConn ~ 10325 1975
NoConn ~ 10325 2075
NoConn ~ 9825 2075
NoConn ~ 9825 1975
NoConn ~ 9825 2375
NoConn ~ 9825 2475
NoConn ~ 9825 2575
NoConn ~ 10325 2475
NoConn ~ 10325 2375
NoConn ~ 9825 4325
NoConn ~ 9825 4425
NoConn ~ 10325 4325
NoConn ~ 10325 4725
NoConn ~ 10325 4825
NoConn ~ 10325 4925
NoConn ~ 10325 5025
NoConn ~ 9825 4925
NoConn ~ 9825 4825
NoConn ~ 9825 4725
NoConn ~ 9825 4625
NoConn ~ 10325 5325
NoConn ~ 10325 5425
NoConn ~ 9825 5425
NoConn ~ 9825 5525
NoConn ~ 10325 5725
NoConn ~ 9825 5725
NoConn ~ 10325 4225
NoConn ~ 9825 4225
$Comp
L Connector_Generic:Conn_02x14_Odd_Even J1
U 1 1 5E777A8E
P 1450 1725
F 0 "J1" H 1500 2542 50  0000 C CNN
F 1 "Conn_02x14_Odd_Even" H 1500 2451 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x14_P2.54mm_Vertical" H 1450 1725 50  0001 C CNN
F 3 "~" H 1450 1725 50  0001 C CNN
	1    1450 1725
	1    0    0    -1  
$EndComp
Wire Bus Line
	950  2775 2050 2775
Connection ~ 950  2775
NoConn ~ 5625 1775
NoConn ~ 5625 1875
$Comp
L BeagleSatella:ATF1504AS-10JU44 U1
U 1 1 5E7707AC
P 4825 1775
F 0 "U1" H 4825 1800 50  0000 C CNN
F 1 "ATF1504AS-10JU44" H 4825 1700 50  0000 C CNN
F 2 "Package_LCC:PLCC-44_THT-Socket" H 4825 2075 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-0950-CPLD-ATF1504AS(L)-Datasheet.pdf" H 4825 3225 50  0001 C CNN
	1    4825 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	5625 2675 5625 2875
Wire Wire Line
	5625 2275 5625 2375
Connection ~ 5625 2675
Connection ~ 5625 2375
Wire Wire Line
	5625 2375 5625 2475
Connection ~ 5625 2475
Wire Wire Line
	5625 2475 5625 2575
Connection ~ 5625 2575
Wire Wire Line
	5625 2575 5625 2675
Wire Wire Line
	4575 2875 4675 2875
Connection ~ 4675 2875
Wire Wire Line
	4675 2875 4775 2875
NoConn ~ 10325 4625
NoConn ~ 10325 4425
NoConn ~ 9825 1475
NoConn ~ 9825 4525
NoConn ~ 10325 4525
Entry Wire Line
	5925 1575 6025 1475
Entry Wire Line
	5925 1675 6025 1575
Wire Wire Line
	5625 1675 5925 1675
Wire Wire Line
	5625 1575 5925 1575
Wire Wire Line
	5625 1475 5925 1475
Wire Wire Line
	5625 1375 5925 1375
Wire Wire Line
	5625 1275 5925 1275
Wire Wire Line
	5625 1175 5925 1175
Wire Wire Line
	5625 1075 5925 1075
Wire Wire Line
	5625 975  5925 975 
Text Label 7100 875  2    50   ~ 0
~PARD_5V
Text Label 7100 775  2    50   ~ 0
~PAWR_5V
Entry Wire Line
	6675 1375 6775 1275
Entry Wire Line
	6675 1475 6775 1375
Wire Wire Line
	6775 1475 7100 1475
Wire Wire Line
	6775 1375 7100 1375
Wire Wire Line
	6775 1275 7100 1275
Wire Wire Line
	6775 1175 7100 1175
Wire Wire Line
	6775 1075 7100 1075
Wire Wire Line
	6775 975  7100 975 
Wire Wire Line
	7100 875  6775 875 
Wire Wire Line
	7100 775  6775 775 
Wire Wire Line
	8450 875  8100 875 
Wire Wire Line
	8450 775  8100 775 
Text Label 8100 875  0    50   ~ 0
~PARD_3V
Text Label 8100 775  0    50   ~ 0
~PAWR_3V
Text Label 4025 1975 2    50   ~ 0
~IRQ
Text Label 4025 2075 2    50   ~ 0
~IRQ_3V
Text Label 4025 2175 2    50   ~ 0
~DATA_OE
Wire Wire Line
	4025 1975 3700 1975
Wire Wire Line
	4025 2075 3700 2075
Wire Wire Line
	4025 2175 3700 2175
Text Label 9825 1575 2    50   ~ 0
~PAWR_3V
Entry Wire Line
	9400 1475 9500 1575
Entry Wire Line
	8450 1375 8550 1275
Entry Wire Line
	8450 1475 8550 1375
Wire Wire Line
	8100 975  8450 975 
Wire Wire Line
	8100 1075 8450 1075
Wire Wire Line
	8100 1175 8450 1175
Wire Wire Line
	8100 1275 8450 1275
Wire Wire Line
	8100 1375 8450 1375
Wire Wire Line
	8100 1475 8450 1475
Text Label 10325 1575 0    50   ~ 0
~PARD_3V
Entry Wire Line
	10625 1575 10725 1475
Text GLabel 2125 2125 2    39   Output ~ 0
SFC_VCC
Wire Wire Line
	1950 2125 2125 2125
Text GLabel 6750 5325 0    39   Input ~ 0
SFC_VCC
Wire Wire Line
	6750 5325 7100 5325
Wire Bus Line
	9500 3250 10650 3250
Wire Wire Line
	8100 1950 8100 1775
$Comp
L power:GNDD #PWR0104
U 1 1 5EB8F4B7
P 7525 1950
F 0 "#PWR0104" H 7525 1700 50  0001 C CNN
F 1 "GNDD" H 7529 1795 50  0000 C CNN
F 2 "" H 7525 1950 50  0001 C CNN
F 3 "" H 7525 1950 50  0001 C CNN
	1    7525 1950
	1    0    0    -1  
$EndComp
Text Label 8100 5225 0    50   ~ 0
~RESET_3V
Text Label 8100 5325 0    50   ~ 0
SFC_VCC_3V
Wire Wire Line
	8100 5325 8575 5325
Wire Wire Line
	8100 5225 8575 5225
Wire Wire Line
	10325 875  10475 875 
Wire Wire Line
	9700 875  9825 875 
Wire Bus Line
	9400 675  10725 675 
Wire Wire Line
	10325 2275 10625 2275
Wire Wire Line
	10325 2175 10625 2175
Wire Wire Line
	10325 1775 10625 1775
Wire Wire Line
	10325 1575 10625 1575
Wire Wire Line
	9825 1575 9500 1575
Wire Wire Line
	9825 1875 9500 1875
Wire Wire Line
	9825 2175 9500 2175
Wire Wire Line
	9825 2275 9500 2275
Wire Wire Line
	7100 1950 7525 1950
Wire Wire Line
	8100 1675 8150 1675
Connection ~ 7525 1950
Wire Wire Line
	7100 1775 7100 1950
Wire Wire Line
	8150 1675 8150 2150
Wire Wire Line
	7025 1675 7025 2150
Wire Wire Line
	7025 1675 7100 1675
Connection ~ 7025 2150
Wire Wire Line
	8100 5125 8100 5025
Connection ~ 8100 4725
Wire Wire Line
	8100 4725 8100 4625
Connection ~ 8100 4825
Wire Wire Line
	8100 4825 8100 4725
Connection ~ 8100 4925
Wire Wire Line
	8100 4925 8100 4825
Connection ~ 8100 5025
Wire Wire Line
	8100 5025 8100 4925
Wire Wire Line
	7100 5125 7100 5025
Connection ~ 7100 4725
Wire Wire Line
	7100 4725 7100 4625
Connection ~ 7100 4825
Wire Wire Line
	7100 4825 7100 4725
Connection ~ 7100 4925
Wire Wire Line
	7100 4925 7100 4825
Connection ~ 7100 5025
Wire Wire Line
	7100 5025 7100 4925
$Comp
L power:GNDD #PWR0116
U 1 1 6036261F
P 8175 4625
F 0 "#PWR0116" H 8175 4375 50  0001 C CNN
F 1 "GNDD" V 8179 4515 50  0000 R CNN
F 2 "" H 8175 4625 50  0001 C CNN
F 3 "" H 8175 4625 50  0001 C CNN
	1    8175 4625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 4625 8175 4625
Connection ~ 8100 4625
Connection ~ 7100 4625
NoConn ~ 4025 2275
$Comp
L Device:CP1_Small C10
U 1 1 60486ED3
P 5500 7175
F 0 "C10" H 5225 7225 50  0000 L CNN
F 1 "10uF" H 5225 7125 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 5500 7175 50  0001 C CNN
F 3 "~" H 5500 7175 50  0001 C CNN
	1    5500 7175
	1    0    0    -1  
$EndComp
Connection ~ 5625 2875
$Comp
L Device:CP1_Small C11
U 1 1 604C2615
P 5775 7175
F 0 "C11" H 5950 7221 50  0000 C CNN
F 1 "10uF" H 5975 7130 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 5775 7175 50  0001 C CNN
F 3 "~" H 5775 7175 50  0001 C CNN
	1    5775 7175
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0118
U 1 1 604E1104
P 5775 7275
F 0 "#PWR0118" H 5775 7025 50  0001 C CNN
F 1 "GNDD" H 5775 7125 50  0000 C CNN
F 2 "" H 5775 7275 60  0000 C CNN
F 3 "" H 5775 7275 60  0000 C CNN
	1    5775 7275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5F00BE06
P 2975 2375
F 0 "R1" H 3043 2421 50  0001 L CNN
F 1 "10K" H 3043 2330 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 2975 2375 50  0001 C CNN
F 3 "~" H 2975 2375 50  0001 C CNN
	1    2975 2375
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5F008D18
P 2550 3400
F 0 "#PWR0112" H 2550 3250 50  0001 C CNN
F 1 "+5V" V 2565 3528 50  0000 L CNN
F 2 "" H 2550 3400 50  0001 C CNN
F 3 "" H 2550 3400 50  0001 C CNN
	1    2550 3400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AVR-JTAG-10 J3
U 1 1 5E72E7DD
P 3275 3300
F 0 "J3" V 3275 3350 50  0000 R CNN
F 1 "AVR-JTAG-10" V 2800 3550 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" V 3125 3450 50  0001 C CNN
F 3 " ~" H 2000 2750 50  0001 C CNN
	1    3275 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4875 2875 4875 2975
Connection ~ 4875 2875
Wire Wire Line
	4975 3300 5075 3300
Connection ~ 4975 3300
Wire Wire Line
	4875 3175 4875 3300
Connection ~ 4875 3300
Wire Wire Line
	4875 3300 4975 3300
Wire Wire Line
	5075 3175 5075 3300
Connection ~ 5075 3300
Wire Wire Line
	5075 3300 5175 3300
Wire Wire Line
	5075 2975 5075 2875
Wire Wire Line
	4975 2875 4975 3100
Wire Wire Line
	5175 3100 5175 2875
Wire Wire Line
	4575 2875 4575 3300
Connection ~ 4575 3300
Wire Wire Line
	4575 3300 4875 3300
Wire Wire Line
	3475 2800 3475 2675
Wire Wire Line
	3375 2800 3375 2575
Wire Wire Line
	3275 2800 3275 2475
Wire Wire Line
	3175 2800 3175 2375
Connection ~ 3175 2375
Wire Wire Line
	3175 2375 3075 2375
Text Notes 2850 2325 0    50   ~ 0
R1-R4
Wire Wire Line
	3075 2475 3275 2475
Connection ~ 3275 2475
Wire Wire Line
	3075 2575 3375 2575
Connection ~ 3375 2575
Wire Wire Line
	3075 2675 3475 2675
Connection ~ 3475 2675
Wire Wire Line
	2675 3400 2550 3400
Wire Wire Line
	2550 3400 2550 2675
Wire Wire Line
	2550 2375 2875 2375
Wire Wire Line
	2875 2475 2550 2475
Connection ~ 2550 2475
Wire Wire Line
	2550 2475 2550 2375
Wire Wire Line
	2875 2575 2550 2575
Connection ~ 2550 2575
Wire Wire Line
	2550 2575 2550 2475
Wire Wire Line
	2875 2675 2550 2675
Connection ~ 2550 2675
Wire Wire Line
	2550 2675 2550 2575
Connection ~ 2550 3400
NoConn ~ 3075 2800
NoConn ~ 2975 2800
NoConn ~ 2675 3300
Wire Wire Line
	7525 1950 7750 1950
Wire Wire Line
	7025 2150 7750 2150
Connection ~ 7750 1950
Wire Wire Line
	7750 1950 8100 1950
Connection ~ 7750 2150
Wire Wire Line
	7750 2150 8150 2150
Wire Wire Line
	7100 4625 7100 4350
Wire Wire Line
	1000 2225 1000 2550
Wire Wire Line
	2000 2225 2000 2550
Text GLabel 875  2425 0    39   Input ~ 0
SL
Wire Wire Line
	1250 2425 875  2425
Text GLabel 2125 2425 2    39   Input ~ 0
SR
Wire Wire Line
	1750 2425 2125 2425
Text GLabel 4075 7050 2    39   Output ~ 0
SL
Text GLabel 4075 7150 2    39   Output ~ 0
SR
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5F9B21D4
P 3775 7150
F 0 "J2" H 3950 7575 50  0000 C CNN
F 1 "AudioConn_01x03_Male" H 3900 7475 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3775 7150 50  0001 C CNN
F 3 "~" H 3775 7150 50  0001 C CNN
	1    3775 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0114
U 1 1 5F9D7371
P 4075 7250
F 0 "#PWR0114" H 4075 7000 50  0001 C CNN
F 1 "GNDD" H 4079 7095 50  0000 C CNN
F 2 "" H 4075 7250 50  0001 C CNN
F 3 "" H 4075 7250 50  0001 C CNN
	1    4075 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 7250 3975 7250
Wire Wire Line
	4075 7150 3975 7150
Wire Wire Line
	4075 7050 3975 7050
Wire Notes Line
	3675 6950 3675 7325
Wire Notes Line
	3675 7325 3950 7325
Wire Notes Line
	3950 7325 3950 6950
Wire Notes Line
	3950 6950 3675 6950
$Comp
L Connector_Generic:Conn_02x14_Odd_Even J4
U 1 1 5FB5B348
P 4425 5250
F 0 "J4" H 4475 6067 50  0000 C CNN
F 1 "SFC Connector" H 4475 5976 50  0000 C CNN
F 2 "beaglesatella_cape:Samtec_MECF-40-01-L-DV-WT_2x40_P1.27mm_Polarized_Socket_Horizontal" H 4425 5250 50  0001 C CNN
F 3 "~" H 4425 5250 50  0001 C CNN
	1    4425 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x14_Odd_Even J5
U 1 1 5FB5D4A1
P 5150 5250
F 0 "J5" H 5200 6067 50  0000 C CNN
F 1 "Pin Header" H 5200 5976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x14_P2.54mm_Vertical" H 5150 5250 50  0001 C CNN
F 3 "~" H 5150 5250 50  0001 C CNN
	1    5150 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4725 4650 4850 4650
Wire Wire Line
	4725 4750 4850 4750
Wire Wire Line
	4725 4850 4850 4850
Wire Wire Line
	4725 4950 4850 4950
Wire Wire Line
	4725 5050 4850 5050
Wire Wire Line
	4725 5150 4850 5150
Wire Wire Line
	4725 5250 4850 5250
Wire Wire Line
	4725 5350 4850 5350
Wire Wire Line
	4725 5450 4850 5450
Wire Wire Line
	4725 5550 4850 5550
Wire Wire Line
	4725 5650 4850 5650
Wire Wire Line
	4725 5750 4850 5750
Wire Wire Line
	4725 5850 4850 5850
Wire Wire Line
	4725 5950 4850 5950
Entry Wire Line
	5550 4650 5650 4750
Entry Wire Line
	5550 4850 5650 4950
Entry Wire Line
	5550 4750 5650 4850
Entry Wire Line
	5550 4950 5650 5050
Entry Wire Line
	5550 5050 5650 5150
Entry Wire Line
	5550 5150 5650 5250
Entry Wire Line
	5550 5250 5650 5350
Entry Wire Line
	5550 5350 5650 5450
Entry Wire Line
	5550 5450 5650 5550
Entry Wire Line
	5550 5550 5650 5650
Entry Wire Line
	5550 5650 5650 5750
Entry Wire Line
	5550 5750 5650 5850
Entry Wire Line
	5550 5850 5650 5950
Entry Wire Line
	5550 5950 5650 6050
Text Label 4225 4650 2    50   ~ 0
PIN1
Text Label 4225 4750 2    50   ~ 0
PIN3
Text Label 4225 4850 2    50   ~ 0
PIN5
Text Label 4225 4950 2    50   ~ 0
PIN7
Text Label 4225 5050 2    50   ~ 0
PIN9
Text Label 4225 5150 2    50   ~ 0
PIN11
Text Label 4225 5250 2    50   ~ 0
PIN13
Text Label 4225 5350 2    50   ~ 0
PIN15
Text Label 4225 5450 2    50   ~ 0
PIN17
Text Label 4225 5550 2    50   ~ 0
PIN19
Text Label 4225 5650 2    50   ~ 0
PIN21
Text Label 4225 5750 2    50   ~ 0
PIN23
Text Label 4225 5850 2    50   ~ 0
PIN25
Text Label 4225 5950 2    50   ~ 0
PIN27
Entry Wire Line
	3925 4750 4025 4650
Entry Wire Line
	3925 4850 4025 4750
Entry Wire Line
	3925 4950 4025 4850
Entry Wire Line
	3925 5050 4025 4950
Entry Wire Line
	3925 5150 4025 5050
Entry Wire Line
	3925 5250 4025 5150
Entry Wire Line
	3925 5350 4025 5250
Entry Wire Line
	3925 5450 4025 5350
Entry Wire Line
	3925 5550 4025 5450
Entry Wire Line
	3925 5650 4025 5550
Entry Wire Line
	3925 5750 4025 5650
Entry Wire Line
	3925 5850 4025 5750
Entry Wire Line
	3925 5950 4025 5850
Entry Wire Line
	3925 6050 4025 5950
Wire Wire Line
	4025 4650 4225 4650
Wire Wire Line
	4225 4750 4025 4750
Wire Wire Line
	4225 4850 4025 4850
Wire Wire Line
	4225 4950 4025 4950
Wire Wire Line
	4225 5050 4025 5050
Wire Wire Line
	4225 5150 4025 5150
Wire Wire Line
	4225 5250 4025 5250
Wire Wire Line
	4225 5350 4025 5350
Wire Wire Line
	4225 5450 4025 5450
Wire Wire Line
	4225 5550 4025 5550
Wire Wire Line
	4225 5650 4025 5650
Wire Wire Line
	4225 5750 4025 5750
Wire Wire Line
	4225 5850 4025 5850
Wire Wire Line
	4225 5950 4025 5950
Text Label 5350 4650 0    50   ~ 0
PIN1
Text Label 5350 4750 0    50   ~ 0
PIN3
Text Label 5350 4850 0    50   ~ 0
PIN5
Text Label 5350 4950 0    50   ~ 0
PIN7
Text Label 5350 5050 0    50   ~ 0
PIN9
Text Label 5350 5150 0    50   ~ 0
PIN11
Text Label 5350 5250 0    50   ~ 0
PIN13
Text Label 5350 5350 0    50   ~ 0
PIN15
Text Label 5350 5450 0    50   ~ 0
PIN17
Text Label 5350 5550 0    50   ~ 0
PIN19
Text Label 5350 5650 0    50   ~ 0
PIN21
Text Label 5350 5750 0    50   ~ 0
PIN23
Text Label 5350 5850 0    50   ~ 0
PIN25
Text Label 5350 5950 0    50   ~ 0
PIN27
Wire Wire Line
	5350 4650 5550 4650
Wire Wire Line
	5350 4750 5550 4750
Wire Wire Line
	5350 4850 5550 4850
Wire Wire Line
	5350 4950 5550 4950
Wire Wire Line
	5350 5050 5550 5050
Wire Wire Line
	5350 5150 5550 5150
Wire Wire Line
	5350 5250 5550 5250
Wire Wire Line
	5350 5350 5550 5350
Wire Wire Line
	5350 5450 5550 5450
Wire Wire Line
	5350 5550 5550 5550
Wire Wire Line
	5350 5650 5550 5650
Wire Wire Line
	5350 5750 5550 5750
Wire Wire Line
	5350 5850 5550 5850
Wire Wire Line
	5350 5950 5550 5950
Wire Bus Line
	3925 6125 5650 6125
Text Notes 4200 4325 0    50   ~ 0
Expansion Port Adapter Panel
Text Notes 10575 7650 0    59   ~ 0
A
Text Notes 4900 3425 0    50   ~ 0
C1-C4
$Comp
L power:+5V #PWR0117
U 1 1 5EB2412B
P 5500 7075
F 0 "#PWR0117" H 5500 6925 50  0001 C CNN
F 1 "+5V" H 5515 7248 50  0000 C CNN
F 2 "" H 5500 7075 50  0001 C CNN
F 3 "" H 5500 7075 50  0001 C CNN
	1    5500 7075
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0119
U 1 1 5EB50E54
P 5500 7275
F 0 "#PWR0119" H 5500 7025 50  0001 C CNN
F 1 "GNDD" H 5504 7120 50  0000 C CNN
F 2 "" H 5500 7275 50  0001 C CNN
F 3 "" H 5500 7275 50  0001 C CNN
	1    5500 7275
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 5EC328A4
P 5775 7075
F 0 "#PWR0120" H 5775 6925 50  0001 C CNN
F 1 "+3V3" H 5775 7248 50  0000 C CNN
F 2 "" H 5775 7075 60  0000 C CNN
F 3 "" H 5775 7075 60  0000 C CNN
	1    5775 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4350 8100 4350
Wire Wire Line
	8100 4350 8100 4625
Text Notes 5325 6825 0    50   ~ 0
Bypass Capacitors
Wire Notes Line
	5150 7500 6150 7500
Wire Notes Line
	6150 7500 6150 6700
Wire Notes Line
	6150 6700 5150 6700
Wire Notes Line
	5150 6700 5150 7500
Wire Bus Line
	2050 875  3725 875 
Connection ~ 2050 875 
Wire Wire Line
	9675 6125 10075 6125
Wire Wire Line
	9675 6125 9675 6025
Connection ~ 10075 6125
Wire Wire Line
	10075 6125 10475 6125
Wire Bus Line
	9375 6350 10875 6350
Connection ~ 9375 6350
Wire Bus Line
	950  4025 6175 4025
Wire Notes Line
	3825 4175 3825 6200
Wire Notes Line
	3825 6200 5725 6200
Wire Notes Line
	3825 4175 5725 4175
Wire Notes Line
	5725 4175 5725 6200
Wire Bus Line
	8550 675  9400 675 
Connection ~ 9400 675 
Wire Bus Line
	9500 3250 8425 3250
Connection ~ 9500 3250
Wire Bus Line
	2575 6350 9375 6350
Wire Bus Line
	6025 1575 6675 1575
Wire Bus Line
	950  2775 950  4025
Connection ~ 950  4025
Text Label 2500 875  0    50   ~ 10
SFC_ADDR_BUS
Text Label 1200 4025 0    50   ~ 10
SFC_DATA_BIDIRECTIONAL_BUS
Text Label 8675 675  0    50   ~ 10
BBB_ADDR_BUS
Text Label 8550 3250 0    50   ~ 10
BBB_DATA_INPUT_BUS
Text Label 8400 6350 0    50   ~ 10
BBB_DATA_OUTPUT_BUS
Wire Wire Line
	3175 2375 4025 2375
Wire Wire Line
	3275 2475 4025 2475
Wire Wire Line
	3375 2575 4025 2575
Wire Wire Line
	3475 2675 4025 2675
Wire Wire Line
	3875 3300 4575 3300
Connection ~ 7725 4025
Text Label 6650 3550 0    50   ~ 0
SFC_VCC_3V
Text GLabel 6650 3550 0    39   Input ~ 0
SFC_VCC_3V
Wire Wire Line
	6650 3550 7100 3550
Wire Bus Line
	6175 3450 6175 4025
Wire Bus Line
	6175 3450 6900 3450
Wire Wire Line
	9550 2675 9825 2675
Wire Wire Line
	10325 2675 10600 2675
Wire Wire Line
	10325 2575 10600 2575
NoConn ~ 10325 5625
NoConn ~ 10325 5525
NoConn ~ 9825 5625
Wire Bus Line
	10875 5225 10875 6350
Wire Bus Line
	10725 675  10725 2175
Wire Bus Line
	9400 675  9400 2175
Wire Bus Line
	10650 2875 10650 3250
Wire Bus Line
	9500 2875 9500 3250
Wire Bus Line
	2050 1725 2050 2775
Wire Bus Line
	950  1725 950  2775
Wire Bus Line
	950  875  950  1425
Wire Bus Line
	2050 875  2050 1425
Wire Bus Line
	6900 2750 6900 3450
Wire Bus Line
	8425 2550 8425 3250
Wire Bus Line
	9375 5125 9375 6350
Wire Bus Line
	950  4025 950  6325
Wire Bus Line
	2575 5475 2575 6350
Wire Bus Line
	6025 875  6025 1575
Wire Bus Line
	6675 875  6675 1575
Wire Bus Line
	8550 675  8550 1375
Wire Bus Line
	3725 875  3725 1775
Wire Bus Line
	5650 4750 5650 6125
Wire Bus Line
	3925 4750 3925 6125
$EndSCHEMATC
