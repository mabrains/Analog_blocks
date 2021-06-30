# Bandgap reference simulation

## Schematic

![Image of BGR schematic](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor5v/Schematic.png)

## Bandgap OTA

![Image of BGR OTA](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_Miller_BGR_1.8v/BGR_OTA.png)

## a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region (Vds > Vdsat).

## b. Temperature variations

Use the command (.DC temp) then press netlist then press simulate. After simulation is done write the command (plot vref) to plot the reference voltage vs temp.

![Image of BGR Temp](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor5v/Vref_Temp.png)

## c. Supply variations

Use the command (.DC vin) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage vs vdd.

![Image of BGR vdd](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor5v/Vref_VDD.png)

## d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage and the input vs time.

![Image of BGR transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor5v/Vref_Transient.png)

## e. PSRR analysis

Use the command (.AC vin) then press netlist then press simulate. After simulation is done write the command (plot vdb(vref)) to plot the PSRR in dB.

![Image of BGR PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor5v/PSRR.png)

## f. Testbench netlist

The netlist of all previous analyses is below or you can run it using the script "BGR_script.bash" existed in scripts folder.

![Image of BGR netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor5v/TB_netlist.png)

## Simulation results

Specification    | Achieved
-----------------| ------------------------------------
Reference output |              1v
Temp. variation  | 20mv over T from -40 deg to 125 deg
Supply variation | 3mv  over VDD from 1.6v to 2v 

Corners simulation:
   Process   |  TT  |  FF  |  SS  |  FS  |  SF
-------------|------|------|------|------|------
Vref at T=27 |1v    |1.009v|1.007v|1.009v|1.023v
Vref at T=-45|0.995v|1.005v|1.007v|1.006v|1.019v
Vref at T=90 |0.997v|1.009v|1.004v|1.008v|1.023v

## Layout

![Image of BGR layout](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v_2/Layout.png)

### DRC report

The layout was checked using the script "run_standard_drc.py" existed in scripts folder and it was DRC clean.

### LVS report 

LVS was checked using the script "run_standard_lvs.py" existed in scripts folder and it was LVS clean.
note: the difference in number of devices is because the layout was flattened and the 8 parallel BJT's were considered one device.

![Image of BGR lvs report](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v_2/lvs_report.png)
