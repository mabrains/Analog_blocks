# Miller OTA Simulation

## Testbench

![Image of Two_stage_Miller_OTA_TB](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/OTA/Images/Miller_OTA/Transistor1.8v/Two_stage_TB.png)

## Schematic

![Image of Two_stage_Miller_OTA](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/OTA/Images/Miller_OTA/Transistor1.8v/Two_stage_sch.png)

## a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation (Vds > Vdsat).

![Image of DC op](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/OTA/Images/Miller_OTA/Transistor1.8v/Two_stage_DC%20operating%20point.png)

## b. AC analysis

Use the command (.AC) then press netlist then press simulate. After simulation is done write the command (plot db(vout)) to plot the magnitude of the gain in dB.

![Image of gain_mag](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/OTA/Images/Miller_OTA/Transistor1.8v/Two_stage_gain_mag.png)

write the command (plot 180/pi* phase(vout)) to plot the phase of the gain in degrees.

![Image of gain_phase](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/OTA/Images/Miller_OTA/Transistor1.8v/Two_stage_gain_phase.png)

## c. Transient analysis

Make the OTA as a buffer by connecting vn to vout and use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vp vout)
to plot the input and the output of the buffer.

![Image of transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/OTA/Images/Miller_OTA/Transistor1.8v/Two_stage_Transient.png)

## d. Noise analysis

Use the command (.noise) then press netlist then press simulate. After simulation is done write the command (setplot noise1) and then the command (plot inoise_spectrum)
to plot the input referred noise.

![Image of noise](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/OTA/Images/Miller_OTA/Transistor1.8v/Two_stage_Input_Noise.png)

## e. Testbench netlist

The netlist of all previous analyses is below and for each analysis you want to do uncomment the lines of it(remove the '*' ).

![Image of netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/OTA/Images/Miller_OTA/Transistor1.8v/Two_stage_netlist.png)

## Simulation results

Specification | Achieved
------------- | ---------
Gain          | 61 dB
GBW           | 38 MHz
Phase margin  | 54 deg
CMRR          | 72 dB
PSRR          | 2.4 dB
Power         | 274 uW

Corners simulation: 
Process | TT | FF | SS | FS | SF
--------|----|----|----|----|----
gain(dB)| 61 | 61 | 59 | 59 | 61
GBW(MHz)| 37 | 38 | 35 | 36 | 38
PM(deg) | 52 | 50 | 53 | 54 | 49
CMRR(dB)| 72 | 74 | 70 | 70 | 73
PSRR(dB)| 2.4 | 2.4 | 2.4 | 2.35 | 2.5
Power(uW)| 274 | 277 | 271 | 277 | 271
--------------------------------- 
Supply  | TT | FF | SS 
--------|----|----|----
gain(dB)| 61 | 61 | 59 
GBW(MHz)| 37 | 37 | 35 
PM(deg) | 52 | 52 | 53
CMRR(dB)| 72 | 72 | 71 
PSRR(dB)| 2.4 | 2.4 | 2.4 
Power(uW)| 274 | 292 | 256 
