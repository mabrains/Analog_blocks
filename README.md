# Analog_blocks
## This is an explanation how to simulate analog blocks

### 1. OTA

![Image of Two_stage_Miller_OTA](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Miller_OTA/Two_stage_sch.png)

a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation.

![Image of DC op](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Miller_OTA/Two_stage_DC%20operating%20point.png)

b. AC analysis

Use the command (.AC) then press netlist then press simulate. After simulation is done write the command (plot vdb(vout)) to plot the magnitude of the gain in dB.

![Image of gain_mag](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Miller_OTA/Two_stage_gain_mag.png)

write the command (plot vp(vout)) to plot the phase of the gain.

![Image of gain_phase](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Miller_OTA/Two_stage_gain_phase.png)

c. Transient analysis

Make the OTA as a buffer by connecting vn to vout and use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vp vout)
to plot the input and the output of the buffer.

![Image of transient](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Miller_OTA/Two_stage_Transient.png)

d. Noise analysis

Use the command (.noise) then press netlist then press simulate. After simulation is done write the command (setplot noise1) and then the command (plot inoise_spectrum)
to plot the input referred noise.

![Image of noise](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Miller_OTA/Two_stage_Input_Noise.png)

The netlist of all previous analyses is below and for each analysis you want to do uncomment the lines of it.

![Image of netlist](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Miller_OTA/Two_stage_netlist.png)

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

### 2. Bandgap reference

![Image of BGR schematic](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/curves/Bandgap1.8v/Schematic.png)

![Image of BGR OTA](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/curves/Bandgap1.8v/OTA.png)

a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region.

b. Temperature variations

Use the command (.DC temp) then press netlist then press simulate. After simulation is done write the command (plot vref) to plot the reference voltage vs temp.

![Image of BGR Temp](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/curves/Bandgap1.8v/Vref_TEMP_1.8v.png)

c. Supply variations

Use the command (.DC vin) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage vs vdd.

![Image of BGR vdd](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/curves/Bandgap1.8v/Vref_Vdd_1.8v.png)

d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage and the input vs time.

![Image of BGR transient](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/curves/Bandgap1.8v/Vref_Transient_1.8v.png)

e. PSRR analysis

Use the command (.AC vin) then press netlist then press simulate. After simulation is done write the command (plot vdb(vref)) to plot the PSRR in dB.

![Image of BGR PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/curves/Bandgap1.8v/PSRR_1.8v.png)

The netlist of all previous analyses is below and for each analysis you want to do uncomment the lines of it.

![Image of BGR netlist](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/curves/Bandgap1.8v/BGR_netlist.png)

Specification    | Achieved
-----------------| ---------
Reference output |              1.1v
Temp. variation  | 20mv over T from -40 deg to 125 deg
Supply variation | 3mv  over VDD from 1.6v to 2v 

Corners simulation:
   Process   |  TT  |  FF  |  SS  |  FS  |  SF
-------------|------|------|------|------|------
Vref at T=27 |1.114v|1.119v|1.107v|1.109v|1.123v
Vref at T=-45|1.111v|1.115v|1.107v|1.106v|1.119v
Vref at T=90 |1.113v|1.119v|1.104v|1.108v|1.123v

### 3. LDO

![Image of LDO schematic](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/Schematic.png)

![Image of LDO_Error amplifier](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/Error_amp_sch.png)

![Image of LDO_BGR](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/BGR.png)

![Image of LDO_BGR_OTA](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/BGR_OTA.png)

a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region.

b. Vout/Vin charactersitics

Use the command (.DC vin) then press netlist then press simulate. After simulation is done write the command (plot vin vout) to plot vout vs vin.

![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/Vout_Vin.png)

c. PSRR analysis

Use the command (.AC vin) then press netlist then press simulate. After simulation is done write the command (plot vdb(vout)) to plot the PSRR in dB.

![Image of LDO_PSRR](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/PSRR.png)

d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vin vout) to plot vin and vout vs time.

![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/Transient.png)

The netlist of all previous analyses is below and for each analysis you want to do uncomment the lines of it.

![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR_1.8v/TB_netlist.png)

Specification    | Achieved
-----------------| ---------
output Voltage   | 1.8v
Input range      | 1.9v to 2.2v
Vdropout         | 0.1v
Line regulation  | 26 mv/v
PSRR @ DC        | 38 dB
PSRR @ 1KHz      | 72 dB
PSRR @ 1MHz      | 94 dB

