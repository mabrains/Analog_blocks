# Analog_blocks
## This is an explanation how to simulate analog blocks

### 1. OTA

![Image of Two_stage_Miller_OTA](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Two_stage_sch.png)

a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation.

![Image of DC op](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Two_stage_DC%20operating%20point.png)

b. AC analysis

Use the command (.AC) then press netlist then press simulate. After simulation is done write the command (plot vdb(vout)) to plot the magnitude of the gain in dB.

![Image of gain_mag](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Two_stage_gain_mag.png)

write the command (plot vp(vout)) to plot the phase of the gain.

![Image of gain_phase](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Two_stage_gain_phase.png)

c. Transient analysis

Make the OTA as a buffer by connecting vn to vout and use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vp vout)
to plot the input and the output of the buffer.

![Image of transient](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Two_stage%20_Transient.png)

d. Noise analysis

Use the command (.noise) then press netlist then press simulate. After simulation is done write the command (setplot noise1) and then the command (plot inoise_spectrum)
to plot the input referred noise.

![Image of noise](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Two_stage_Input_Noise.png)

The netlist of all previous analyses is below and for each analysis you want to do uncomment the lines of it.

![Image of netlist](https://github.com/mabrains/Analog_blocks/blob/main/OTA/Plots/Two_stage_netlist.png)

### 2. Bandgap reference

![Image of BGR schematic](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/My%20Design/curves/Bandgap1.8v/Schematic.png)

![Image of BGR OTA](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/My%20Design/curves/Bandgap1.8v/OTA.png)

a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region.

b. Temperature variations

Use the command (.DC temp) then press netlist then press simulate. After simulation is done write the command (plot vref) to plot the reference voltage vs temp.

![Image of BGR Temp](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/My%20Design/curves/Bandgap1.8v/Vref_TEMP_1.8v.png)

c. Supply variations

Use the command (.DC vin) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage vs vdd.

![Image of BGR vdd](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/My%20Design/curves/Bandgap1.8v/Vref_Vdd_1.8v.png)

d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage and the input vs time.

![Image of BGR transient](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/My%20Design/curves/Bandgap1.8v/Vref_Transient_1.8v.png)

e. PSRR analysis

Use the command (.AC vin) then press netlist then press simulate. After simulation is done write the command (plot vdb(vref)) to plot the PSRR in dB.

![Image of BGR PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/My%20Design/curves/Bandgap1.8v/PSRR_1.8v.png)

The netlist of all previous analyses is below and for each analysis you want to do uncomment the lines of it.

![Image of BGR netlist](https://github.com/mabrains/Analog_blocks/blob/main/Bandgap/My%20Design/curves/Bandgap1.8v/BGR_netlist.png)

### 3. LDO

![Image of LDO schematic](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR/Schematic.png)

![Image of LDO_Error amplifier](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR/Error_amp_sch.png)

![Image of LDO_BGR](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR/BGR.png)

![Image of LDO_BGR_OTA](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR/BGR_OTA.png)

a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region.

b. Vout/Vin sweep

Use the command (.DC vinput) then press netlist then press simulate. After simulation is done write the command (plot vin vout) to plot vout vs vin.

![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR/Vout_Vin.png)

c. PSRR analysis

Use the command (.AC vinput) then press netlist then press simulate. After simulation is done write the command (plot vdb(vout)) to plot the PSRR in dB.

![Image of LDO_PSRR](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR/PSRR.png)

d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vin vout) to plot vin and vout vs time.

The netlist of all previous analyses is below and for each analysis you want to do uncomment the lines of it.

![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/LDO/Plots/LDO_Miller_BGR/LDO_netlist.png)
