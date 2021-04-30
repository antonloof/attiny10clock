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
L Device:LED D1
U 1 1 602A7EA1
P 8550 3400
F 0 "D1" H 8543 3145 50  0000 C CNN
F 1 "LED" H 8543 3236 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8550 3400 50  0001 C CNN
F 3 "~" H 8550 3400 50  0001 C CNN
	1    8550 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 602A9103
P 8550 3750
F 0 "D2" H 8543 3495 50  0000 C CNN
F 1 "LED" H 8543 3586 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8550 3750 50  0001 C CNN
F 3 "~" H 8550 3750 50  0001 C CNN
	1    8550 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3750 8400 3400
Wire Wire Line
	8700 3400 8700 3750
$Comp
L Device:C C1
U 1 1 60620DC5
P 4450 1500
F 0 "C1" H 4565 1546 50  0000 L CNN
F 1 "100n" H 4565 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4488 1350 50  0001 C CNN
F 3 "~" H 4450 1500 50  0001 C CNN
	1    4450 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 60661F17
P 4450 1650
F 0 "#PWR0113" H 4450 1400 50  0001 C CNN
F 1 "GND" H 4455 1477 50  0000 C CNN
F 2 "" H 4450 1650 50  0001 C CNN
F 3 "" H 4450 1650 50  0001 C CNN
	1    4450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1350 4450 1350
Wire Wire Line
	4100 1350 4100 1850
$Comp
L power:+5V #PWR0114
U 1 1 6068095A
P 4100 1350
F 0 "#PWR0114" H 4100 1200 50  0001 C CNN
F 1 "+5V" H 4115 1523 50  0000 C CNN
F 2 "" H 4100 1350 50  0001 C CNN
F 3 "" H 4100 1350 50  0001 C CNN
	1    4100 1350
	1    0    0    -1  
$EndComp
Connection ~ 4100 1350
$Comp
L power:GND #PWR0117
U 1 1 607E22BA
P 2350 6250
F 0 "#PWR0117" H 2350 6000 50  0001 C CNN
F 1 "GND" H 2355 6077 50  0000 C CNN
F 2 "" H 2350 6250 50  0001 C CNN
F 3 "" H 2350 6250 50  0001 C CNN
	1    2350 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 607F087D
P 4100 3050
F 0 "#PWR0118" H 4100 2800 50  0001 C CNN
F 1 "GND" H 4105 2877 50  0000 C CNN
F 2 "" H 4100 3050 50  0001 C CNN
F 3 "" H 4100 3050 50  0001 C CNN
	1    4100 3050
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:DFA-S15 X1
U 1 1 602B4ACA
P 4200 4300
F 0 "X1" H 4400 4550 50  0000 L CNN
F 1 "DFA-S15" H 4200 4050 50  0000 L CNN
F 2 "random_stuff:ASFLK" H 5300 3950 50  0001 C CNN
F 3 "http://www.metatech.com.hk/product/fordahl/pdf/2002%20TCXO%20Page%2043-58.pdf" H 4100 4300 50  0001 C CNN
	1    4200 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 602B5217
P 3800 3800
F 0 "C5" H 3915 3846 50  0000 L CNN
F 1 "10n" H 3915 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3838 3650 50  0001 C CNN
F 3 "~" H 3800 3800 50  0001 C CNN
	1    3800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4300 3900 4000
Wire Wire Line
	3900 4000 4200 4000
Wire Wire Line
	4200 3650 4200 4000
Connection ~ 4200 4000
$Comp
L power:+5V #PWR02
U 1 1 602E0FBC
P 4200 3650
F 0 "#PWR02" H 4200 3500 50  0001 C CNN
F 1 "+5V" H 4215 3823 50  0000 C CNN
F 2 "" H 4200 3650 50  0001 C CNN
F 3 "" H 4200 3650 50  0001 C CNN
	1    4200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 602E1F04
P 3800 4700
F 0 "#PWR01" H 3800 4450 50  0001 C CNN
F 1 "GND" H 3805 4527 50  0000 C CNN
F 2 "" H 3800 4700 50  0001 C CNN
F 3 "" H 3800 4700 50  0001 C CNN
	1    3800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4600 3800 4600
Wire Wire Line
	3800 4600 3800 4700
Wire Wire Line
	4200 3650 3800 3650
Connection ~ 4200 3650
Wire Wire Line
	3800 3950 3800 4600
Connection ~ 3800 4600
$Comp
L MCU_Microchip_ATtiny:ATtiny10-TS U1
U 1 1 602828A7
P 4100 2450
F 0 "U1" H 3570 2496 50  0000 R CNN
F 1 "ATtiny10-TS" H 3570 2405 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4100 2450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8127-AVR-8-bit-Microcontroller-ATtiny4-ATtiny5-ATtiny9-ATtiny10_Datasheet.pdf" H 4100 2450 50  0001 C CNN
	1    4100 2450
	1    0    0    -1  
$EndComp
NoConn ~ 1500 2850
NoConn ~ 1500 2750
Wire Wire Line
	1500 2550 1600 2550
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 602933CF
P 2200 2550
F 0 "SW1" H 2200 2817 50  0000 C CNN
F 1 "SW_DIP_x01" H 2200 2726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2200 2550 50  0001 C CNN
F 3 "~" H 2200 2550 50  0001 C CNN
	1    2200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2550 2500 2450
$Comp
L power:+5V #PWR0101
U 1 1 60294962
P 2500 2450
F 0 "#PWR0101" H 2500 2300 50  0001 C CNN
F 1 "+5V" H 2515 2623 50  0000 C CNN
F 2 "" H 2500 2450 50  0001 C CNN
F 3 "" H 2500 2450 50  0001 C CNN
	1    2500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5450 8400 5550
Wire Wire Line
	8400 4100 8400 4200
Wire Wire Line
	8400 2750 8400 2850
Wire Wire Line
	8400 1400 8400 1500
$Comp
L attiny10clock-rescue:SA56-11EWA-random_things D6
U 1 1 604BC073
P 8150 5800
F 0 "D6" H 8150 6375 50  0000 C CNN
F 1 "SA56-11EWA" H 8150 6284 50  0000 C CNN
F 2 "random_stuff:DIP-10_600_ELL" H 8150 5800 50  0001 C CNN
F 3 "" H 8150 5800 50  0001 C CNN
	1    8150 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5950 7900 5950
Wire Wire Line
	7800 5850 7900 5850
Wire Wire Line
	7800 6050 7900 6050
NoConn ~ 7900 6150
NoConn ~ 7800 6150
$Comp
L attiny10clock-rescue:NPIC6C595-random_things U5
U 1 1 604BC068
P 7450 5900
F 0 "U5" H 7450 6575 50  0000 C CNN
F 1 "NPIC6C595" H 7450 6484 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 7450 5450 50  0001 C CNN
F 3 "" H 7450 5450 50  0001 C CNN
	1    7450 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 6150 7100 6250
$Comp
L power:GND #PWR012
U 1 1 604BC061
P 7100 6250
F 0 "#PWR012" H 7100 6000 50  0001 C CNN
F 1 "GND" H 7105 6077 50  0000 C CNN
F 2 "" H 7100 6250 50  0001 C CNN
F 3 "" H 7100 6250 50  0001 C CNN
	1    7100 6250
	1    0    0    -1  
$EndComp
Connection ~ 7100 6250
Connection ~ 7100 5450
$Comp
L power:+5V #PWR011
U 1 1 604BC059
P 7100 5450
F 0 "#PWR011" H 7100 5300 50  0001 C CNN
F 1 "+5V" H 7115 5623 50  0000 C CNN
F 2 "" H 7100 5450 50  0001 C CNN
F 3 "" H 7100 5450 50  0001 C CNN
	1    7100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5550 7100 5450
Wire Wire Line
	7800 5750 7900 5750
Wire Wire Line
	7800 5650 7900 5650
Wire Wire Line
	7800 5550 7900 5550
Wire Wire Line
	7800 5450 7900 5450
$Comp
L attiny10clock-rescue:SA56-11EWA-random_things D5
U 1 1 604B56B5
P 8150 4450
F 0 "D5" H 8150 5025 50  0000 C CNN
F 1 "SA56-11EWA" H 8150 4934 50  0000 C CNN
F 2 "random_stuff:DIP-10_600_ELL" H 8150 4450 50  0001 C CNN
F 3 "" H 8150 4450 50  0001 C CNN
	1    8150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4600 7900 4600
Wire Wire Line
	7800 4500 7900 4500
Wire Wire Line
	7800 4700 7900 4700
NoConn ~ 7900 4800
NoConn ~ 7800 4800
$Comp
L attiny10clock-rescue:NPIC6C595-random_things U4
U 1 1 604B56AA
P 7450 4550
F 0 "U4" H 7450 5225 50  0000 C CNN
F 1 "NPIC6C595" H 7450 5134 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 7450 4100 50  0001 C CNN
F 3 "" H 7450 4100 50  0001 C CNN
	1    7450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4800 7100 4900
$Comp
L power:GND #PWR010
U 1 1 604B56A3
P 7100 4900
F 0 "#PWR010" H 7100 4650 50  0001 C CNN
F 1 "GND" H 7105 4727 50  0000 C CNN
F 2 "" H 7100 4900 50  0001 C CNN
F 3 "" H 7100 4900 50  0001 C CNN
	1    7100 4900
	1    0    0    -1  
$EndComp
Connection ~ 7100 4900
Connection ~ 7100 4100
$Comp
L power:+5V #PWR09
U 1 1 604B569B
P 7100 4100
F 0 "#PWR09" H 7100 3950 50  0001 C CNN
F 1 "+5V" H 7115 4273 50  0000 C CNN
F 2 "" H 7100 4100 50  0001 C CNN
F 3 "" H 7100 4100 50  0001 C CNN
	1    7100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4200 7100 4100
Wire Wire Line
	7800 4400 7900 4400
Wire Wire Line
	7800 4300 7900 4300
Wire Wire Line
	7800 4200 7900 4200
Wire Wire Line
	7800 4100 7900 4100
$Comp
L attiny10clock-rescue:SA56-11EWA-random_things D4
U 1 1 604B2662
P 8150 3100
F 0 "D4" H 8150 3675 50  0000 C CNN
F 1 "SA56-11EWA" H 8150 3584 50  0000 C CNN
F 2 "random_stuff:DIP-10_600_ELL" H 8150 3100 50  0001 C CNN
F 3 "" H 8150 3100 50  0001 C CNN
	1    8150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3250 7900 3250
Wire Wire Line
	7800 3150 7900 3150
Wire Wire Line
	7800 3350 7900 3350
NoConn ~ 7900 3450
$Comp
L attiny10clock-rescue:NPIC6C595-random_things U3
U 1 1 604B2657
P 7450 3200
F 0 "U3" H 7450 3875 50  0000 C CNN
F 1 "NPIC6C595" H 7450 3784 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 7450 2750 50  0001 C CNN
F 3 "" H 7450 2750 50  0001 C CNN
	1    7450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3450 7100 3550
$Comp
L power:GND #PWR08
U 1 1 604B2650
P 7100 3550
F 0 "#PWR08" H 7100 3300 50  0001 C CNN
F 1 "GND" H 7105 3377 50  0000 C CNN
F 2 "" H 7100 3550 50  0001 C CNN
F 3 "" H 7100 3550 50  0001 C CNN
	1    7100 3550
	1    0    0    -1  
$EndComp
Connection ~ 7100 3550
Connection ~ 7100 2750
$Comp
L power:+5V #PWR07
U 1 1 604B2648
P 7100 2750
F 0 "#PWR07" H 7100 2600 50  0001 C CNN
F 1 "+5V" H 7115 2923 50  0000 C CNN
F 2 "" H 7100 2750 50  0001 C CNN
F 3 "" H 7100 2750 50  0001 C CNN
	1    7100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2850 7100 2750
Wire Wire Line
	7800 3050 7900 3050
Wire Wire Line
	7800 2950 7900 2950
Wire Wire Line
	7800 2850 7900 2850
Wire Wire Line
	7800 2750 7900 2750
$Comp
L attiny10clock-rescue:SA56-11EWA-random_things D3
U 1 1 6036F5A5
P 8150 1750
F 0 "D3" H 8150 2325 50  0000 C CNN
F 1 "SA56-11EWA" H 8150 2234 50  0000 C CNN
F 2 "random_stuff:DIP-10_600_ELL" H 8150 1750 50  0001 C CNN
F 3 "" H 8150 1750 50  0001 C CNN
	1    8150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1900 7900 1900
Wire Wire Line
	7800 1800 7900 1800
Wire Wire Line
	7800 2000 7900 2000
NoConn ~ 7900 2100
NoConn ~ 7800 2100
$Comp
L attiny10clock-rescue:NPIC6C595-random_things U2
U 1 1 60492F39
P 7450 1850
F 0 "U2" H 7450 2525 50  0000 C CNN
F 1 "NPIC6C595" H 7450 2434 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 7450 1400 50  0001 C CNN
F 3 "" H 7450 1400 50  0001 C CNN
	1    7450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2100 7100 2200
$Comp
L power:GND #PWR06
U 1 1 60497B98
P 7100 2200
F 0 "#PWR06" H 7100 1950 50  0001 C CNN
F 1 "GND" H 7105 2027 50  0000 C CNN
F 2 "" H 7100 2200 50  0001 C CNN
F 3 "" H 7100 2200 50  0001 C CNN
	1    7100 2200
	1    0    0    -1  
$EndComp
Connection ~ 7100 2200
Connection ~ 7100 1400
$Comp
L power:+5V #PWR05
U 1 1 60498513
P 7100 1400
F 0 "#PWR05" H 7100 1250 50  0001 C CNN
F 1 "+5V" H 7115 1573 50  0000 C CNN
F 2 "" H 7100 1400 50  0001 C CNN
F 3 "" H 7100 1400 50  0001 C CNN
	1    7100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1500 7100 1400
Wire Wire Line
	7800 1700 7900 1700
Wire Wire Line
	7800 1600 7900 1600
Wire Wire Line
	7800 1500 7900 1500
Wire Wire Line
	7800 1400 7900 1400
Wire Wire Line
	7800 2200 7800 2450
Wire Wire Line
	7800 2450 6950 2450
Wire Wire Line
	6950 2450 6950 3000
Wire Wire Line
	6950 3000 7100 3000
Wire Wire Line
	7800 3800 6950 3800
Wire Wire Line
	6950 3800 6950 4350
Wire Wire Line
	6950 4350 7100 4350
Wire Wire Line
	7800 3550 7800 3800
Wire Wire Line
	7800 4900 7800 5150
Wire Wire Line
	7800 5150 6950 5150
Wire Wire Line
	6950 5150 6950 5700
Wire Wire Line
	6950 5700 7100 5700
Wire Wire Line
	7800 3450 7850 3450
Wire Wire Line
	7850 3450 7850 3750
Wire Wire Line
	7850 3750 8400 3750
Connection ~ 8400 3750
Wire Wire Line
	7100 1800 7100 1900
Wire Wire Line
	7100 1900 6900 1900
Wire Wire Line
	6900 1900 6900 3150
Wire Wire Line
	6900 3150 7100 3150
Connection ~ 7100 1900
Wire Wire Line
	7100 3150 7100 3250
Connection ~ 7100 3150
Wire Wire Line
	6900 4500 7100 4500
Connection ~ 6900 3150
Wire Wire Line
	7100 4600 7100 4500
Connection ~ 7100 4500
Wire Wire Line
	6900 4500 6900 5850
Wire Wire Line
	6900 5850 7100 5850
Connection ~ 6900 4500
Wire Wire Line
	7100 5850 7100 5950
Connection ~ 7100 5850
$Comp
L Device:Fuse F1
U 1 1 6059AF2A
P 1750 2550
F 0 "F1" V 1553 2550 50  0000 C CNN
F 1 "500ma" V 1644 2550 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1680 2550 50  0001 C CNN
F 3 "~" H 1750 2550 50  0001 C CNN
	1    1750 2550
	0    1    1    0   
$EndComp
NoConn ~ 7800 6250
Wire Wire Line
	4700 2250 5250 2250
Wire Wire Line
	4700 2150 5250 2150
Wire Wire Line
	4700 2450 5250 2450
$Comp
L power:GND #PWR013
U 1 1 60601E82
P 5150 2700
F 0 "#PWR013" H 5150 2450 50  0001 C CNN
F 1 "GND" H 5155 2527 50  0000 C CNN
F 2 "" H 5150 2700 50  0001 C CNN
F 3 "" H 5150 2700 50  0001 C CNN
	1    5150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60602B9A
P 6100 2700
F 0 "#PWR014" H 6100 2450 50  0001 C CNN
F 1 "GND" H 6105 2527 50  0000 C CNN
F 2 "" H 6100 2700 50  0001 C CNN
F 3 "" H 6100 2700 50  0001 C CNN
	1    6100 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2350 5150 2350
Wire Wire Line
	5150 2350 5150 2700
$Comp
L Device:C C3
U 1 1 6060E9E4
P 6850 900
F 0 "C3" H 6965 946 50  0000 L CNN
F 1 "100n" H 6965 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6888 750 50  0001 C CNN
F 3 "~" H 6850 900 50  0001 C CNN
	1    6850 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60615A71
P 7250 900
F 0 "C4" H 7365 946 50  0000 L CNN
F 1 "100n" H 7365 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7288 750 50  0001 C CNN
F 3 "~" H 7250 900 50  0001 C CNN
	1    7250 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6061B2EF
P 7650 900
F 0 "C7" H 7765 946 50  0000 L CNN
F 1 "100n" H 7765 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7688 750 50  0001 C CNN
F 3 "~" H 7650 900 50  0001 C CNN
	1    7650 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 606208F0
P 8050 900
F 0 "C8" H 8165 946 50  0000 L CNN
F 1 "100n" H 8165 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8088 750 50  0001 C CNN
F 3 "~" H 8050 900 50  0001 C CNN
	1    8050 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1050 7650 1050
Connection ~ 7250 1050
Wire Wire Line
	7250 1050 6850 1050
Connection ~ 7650 1050
Wire Wire Line
	7650 1050 7250 1050
Wire Wire Line
	6850 750  7250 750 
Connection ~ 7250 750 
Wire Wire Line
	7250 750  7650 750 
Connection ~ 7650 750 
Wire Wire Line
	7650 750  8050 750 
$Comp
L power:+5V #PWR015
U 1 1 60631A4F
P 6850 750
F 0 "#PWR015" H 6850 600 50  0001 C CNN
F 1 "+5V" H 6865 923 50  0000 C CNN
F 2 "" H 6850 750 50  0001 C CNN
F 3 "" H 6850 750 50  0001 C CNN
	1    6850 750 
	1    0    0    -1  
$EndComp
Connection ~ 6850 750 
$Comp
L power:GND #PWR016
U 1 1 6063229F
P 6850 1050
F 0 "#PWR016" H 6850 800 50  0001 C CNN
F 1 "GND" H 6855 877 50  0000 C CNN
F 2 "" H 6850 1050 50  0001 C CNN
F 3 "" H 6850 1050 50  0001 C CNN
	1    6850 1050
	1    0    0    -1  
$EndComp
Connection ~ 6850 1050
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 60649887
P 5450 2250
F 0 "J2" H 5500 2567 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 5500 2476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 5450 2250 50  0001 C CNN
F 3 "~" H 5450 2250 50  0001 C CNN
	1    5450 2250
	1    0    0    -1  
$EndComp
$Comp
L attiny10clock-rescue:RT8097AHGB-random_things U6
U 1 1 6059CE26
P 4150 5550
F 0 "U6" H 4150 5875 50  0000 C CNN
F 1 "RT8097AHGB" H 4150 5784 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 4050 5450 50  0001 C CNN
F 3 "" H 4050 5450 50  0001 C CNN
	1    4150 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 6059DF6C
P 3650 5450
F 0 "#PWR03" H 3650 5300 50  0001 C CNN
F 1 "+5V" H 3665 5623 50  0000 C CNN
F 2 "" H 3650 5450 50  0001 C CNN
F 3 "" H 3650 5450 50  0001 C CNN
	1    3650 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5450 3850 5550
Connection ~ 3850 5450
$Comp
L Device:C_Small C6
U 1 1 605AB686
P 3650 5600
F 0 "C6" H 3742 5646 50  0000 L CNN
F 1 "22u" H 3742 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3650 5600 50  0001 C CNN
F 3 "~" H 3650 5600 50  0001 C CNN
	1    3650 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5700 3650 5700
$Comp
L power:GND #PWR04
U 1 1 605B2E4F
P 3650 5700
F 0 "#PWR04" H 3650 5450 50  0001 C CNN
F 1 "GND" H 3655 5527 50  0000 C CNN
F 2 "" H 3650 5700 50  0001 C CNN
F 3 "" H 3650 5700 50  0001 C CNN
	1    3650 5700
	1    0    0    -1  
$EndComp
Connection ~ 3650 5700
Wire Wire Line
	3650 5500 3650 5450
Connection ~ 3650 5450
Wire Wire Line
	3650 5450 3850 5450
$Comp
L Device:L_Small L1
U 1 1 605BA97A
P 4550 5450
F 0 "L1" V 4735 5450 50  0000 C CNN
F 1 "1.5u" V 4644 5450 50  0000 C CNN
F 2 "Inductor_SMD:L_Wuerth_WE-PD-Typ-7345" H 4550 5450 50  0001 C CNN
F 3 "~" H 4550 5450 50  0001 C CNN
	1    4550 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 605BBA40
P 4650 5550
F 0 "R6" H 4709 5596 50  0000 L CNN
F 1 "27k" H 4709 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4650 5550 50  0001 C CNN
F 3 "~" H 4650 5550 50  0001 C CNN
	1    4650 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 605BC1BF
P 4650 5850
F 0 "R7" H 4709 5896 50  0000 L CNN
F 1 "12k" H 4709 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4650 5850 50  0001 C CNN
F 3 "~" H 4650 5850 50  0001 C CNN
	1    4650 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 605BC4B2
P 4650 5950
F 0 "#PWR017" H 4650 5700 50  0001 C CNN
F 1 "GND" H 4655 5777 50  0000 C CNN
F 2 "" H 4650 5950 50  0001 C CNN
F 3 "" H 4650 5950 50  0001 C CNN
	1    4650 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5750 4650 5700
Wire Wire Line
	4650 5700 4450 5700
Connection ~ 4650 5700
Wire Wire Line
	4650 5700 4650 5650
$Comp
L Device:C_Small C9
U 1 1 605CA5A2
P 5050 5850
F 0 "C9" H 5142 5896 50  0000 L CNN
F 1 "22u" H 5142 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5050 5850 50  0001 C CNN
F 3 "~" H 5050 5850 50  0001 C CNN
	1    5050 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 605CB769
P 5050 5950
F 0 "#PWR018" H 5050 5700 50  0001 C CNN
F 1 "GND" H 5055 5777 50  0000 C CNN
F 2 "" H 5050 5950 50  0001 C CNN
F 3 "" H 5050 5950 50  0001 C CNN
	1    5050 5950
	1    0    0    -1  
$EndComp
Connection ~ 4650 5450
Text GLabel 4700 2350 2    50   Input ~ 0
clk
Text GLabel 4600 4300 2    50   Input ~ 0
clk
Text GLabel 7100 1650 0    50   Input ~ 0
ser_in
Text GLabel 5750 2150 2    50   Input ~ 0
ser_in
Wire Wire Line
	6900 3150 6900 4500
Text GLabel 5750 2250 2    50   Input ~ 0
ser_clk
Text GLabel 6900 1900 0    50   Input ~ 0
ser_clk
Text GLabel 5750 2450 2    50   Input ~ 0
btn_in
Wire Wire Line
	6100 2700 6100 2350
Wire Wire Line
	6100 2350 5750 2350
Text GLabel 2350 5700 2    50   Input ~ 0
btn_in
Connection ~ 2350 5550
Wire Wire Line
	2350 5800 2350 5550
Wire Wire Line
	2350 6250 2350 6100
Wire Wire Line
	2350 5100 2350 5550
Connection ~ 2350 5100
Wire Wire Line
	2350 4650 2350 5100
Connection ~ 2350 4650
Wire Wire Line
	2350 4200 2350 4650
Wire Wire Line
	2050 5550 1950 5550
Wire Wire Line
	1950 5100 2050 5100
Wire Wire Line
	1950 4650 2050 4650
Wire Wire Line
	2050 4200 1950 4200
$Comp
L Device:R R5
U 1 1 6075F9D1
P 2350 5950
F 0 "R5" H 2280 5904 50  0000 R CNN
F 1 "10k" H 2280 5995 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2280 5950 50  0001 C CNN
F 3 "~" H 2350 5950 50  0001 C CNN
	1    2350 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 60753C5F
P 2200 5550
F 0 "R4" V 1993 5550 50  0000 C CNN
F 1 "1k2" V 2084 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2130 5550 50  0001 C CNN
F 3 "~" H 2200 5550 50  0001 C CNN
	1    2200 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 60747D18
P 2200 5100
F 0 "R3" V 1993 5100 50  0000 C CNN
F 1 "3k9" V 2084 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2130 5100 50  0001 C CNN
F 3 "~" H 2200 5100 50  0001 C CNN
	1    2200 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 6073BEE2
P 2200 4650
F 0 "R2" V 1993 4650 50  0000 C CNN
F 1 "10k" V 2084 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2130 4650 50  0001 C CNN
F 3 "~" H 2200 4650 50  0001 C CNN
	1    2200 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 6070981C
P 2200 4200
F 0 "R1" V 1993 4200 50  0000 C CNN
F 1 "22k" V 2084 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2130 4200 50  0001 C CNN
F 3 "~" H 2200 4200 50  0001 C CNN
	1    2200 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 4200 1200 4650
Connection ~ 1200 4200
Wire Wire Line
	1200 4200 1350 4200
Wire Wire Line
	1200 4650 1200 5100
Connection ~ 1200 4650
Wire Wire Line
	1200 4650 1350 4650
Wire Wire Line
	1200 5100 1200 5550
Connection ~ 1200 5100
Wire Wire Line
	1350 5100 1200 5100
Wire Wire Line
	1200 5550 1350 5550
Wire Wire Line
	1200 4000 1200 4200
$Comp
L power:+5V #PWR0116
U 1 1 606CEC82
P 1200 4000
F 0 "#PWR0116" H 1200 3850 50  0001 C CNN
F 1 "+5V" H 1215 4173 50  0000 C CNN
F 2 "" H 1200 4000 50  0001 C CNN
F 3 "" H 1200 4000 50  0001 C CNN
	1    1200 4000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW5
U 1 1 6028D5D0
P 1650 5550
F 0 "SW5" H 1650 5817 50  0000 C CNN
F 1 "SW_DIP_x01" H 1650 5726 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 1650 5550 50  0001 C CNN
F 3 "~" H 1650 5550 50  0001 C CNN
	1    1650 5550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW4
U 1 1 6028D1FF
P 1650 5100
F 0 "SW4" H 1650 5367 50  0000 C CNN
F 1 "SW_DIP_x01" H 1650 5276 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 1650 5100 50  0001 C CNN
F 3 "~" H 1650 5100 50  0001 C CNN
	1    1650 5100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW3
U 1 1 6028BFB0
P 1650 4650
F 0 "SW3" H 1650 4917 50  0000 C CNN
F 1 "SW_DIP_x01" H 1650 4826 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 1650 4650 50  0001 C CNN
F 3 "~" H 1650 4650 50  0001 C CNN
	1    1650 4650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW2
U 1 1 6028B723
P 1650 4200
F 0 "SW2" H 1650 4467 50  0000 C CNN
F 1 "SW_DIP_x01" H 1650 4376 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 1650 4200 50  0001 C CNN
F 3 "~" H 1650 4200 50  0001 C CNN
	1    1650 4200
	1    0    0    -1  
$EndComp
Text GLabel 5050 5450 2    50   Input ~ 0
2v
Text GLabel 8400 1400 2    50   Input ~ 0
2v
Text GLabel 8400 2750 2    50   Input ~ 0
2v
Text GLabel 8700 3400 2    50   Input ~ 0
2v
Text GLabel 8400 4100 2    50   Input ~ 0
2v
Text GLabel 8400 5450 2    50   Input ~ 0
2v
Wire Wire Line
	5050 5750 5050 5450
Text Notes 1200 6300 0    50   ~ 0
buttons at \n1.5V, 2.5V, 3.5V 4.5V\n\nshould add thresholds at \n1V 2V 3V 4V\n\nneeds software debounce
$Comp
L Connector:USB_B_Micro J1
U 1 1 604EBE7D
P 1200 2750
F 0 "J1" H 1257 3217 50  0000 C CNN
F 1 "USB_B_Micro" H 1257 3126 50  0000 C CNN
F 2 "random_stuff:USB_MICRO_10118193-0001LF" H 1350 2700 50  0001 C CNN
F 3 "~" H 1350 2700 50  0001 C CNN
	1    1200 2750
	1    0    0    -1  
$EndComp
NoConn ~ 1500 2950
$Comp
L power:GND #PWR0102
U 1 1 604FD081
P 1200 3150
F 0 "#PWR0102" H 1200 2900 50  0001 C CNN
F 1 "GND" H 1205 2977 50  0000 C CNN
F 2 "" H 1200 3150 50  0001 C CNN
F 3 "" H 1200 3150 50  0001 C CNN
	1    1200 3150
	1    0    0    -1  
$EndComp
NoConn ~ 1100 3150
$Comp
L Connector:TestPoint TP1
U 1 1 6051D169
P 10100 1350
F 0 "TP1" H 10158 1468 50  0000 L CNN
F 1 "TestPoint" H 10158 1377 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 10300 1350 50  0001 C CNN
F 3 "~" H 10300 1350 50  0001 C CNN
	1    10100 1350
	-1   0    0    1   
$EndComp
Text GLabel 10100 1350 1    50   Input ~ 0
2v
Wire Wire Line
	4650 5450 5050 5450
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60530F90
P 10050 1900
F 0 "H1" V 10004 2050 50  0000 L CNN
F 1 "MountingHole_Pad" V 10095 2050 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 10050 1900 50  0001 C CNN
F 3 "~" H 10050 1900 50  0001 C CNN
	1    10050 1900
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60531C39
P 10050 2100
F 0 "H2" V 10004 2250 50  0000 L CNN
F 1 "MountingHole_Pad" V 10095 2250 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 10050 2100 50  0001 C CNN
F 3 "~" H 10050 2100 50  0001 C CNN
	1    10050 2100
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60531F46
P 10050 2500
F 0 "H4" V 10004 2650 50  0000 L CNN
F 1 "MountingHole_Pad" V 10095 2650 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 10050 2500 50  0001 C CNN
F 3 "~" H 10050 2500 50  0001 C CNN
	1    10050 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 1900 9950 2100
Connection ~ 9950 2100
$Comp
L power:GND #PWR0103
U 1 1 605410CB
P 9950 2600
F 0 "#PWR0103" H 9950 2350 50  0001 C CNN
F 1 "GND" H 9955 2427 50  0000 C CNN
F 2 "" H 9950 2600 50  0001 C CNN
F 3 "" H 9950 2600 50  0001 C CNN
	1    9950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2600 9950 2500
Connection ~ 9950 2500
Wire Wire Line
	9950 2100 9950 2500
$EndSCHEMATC
