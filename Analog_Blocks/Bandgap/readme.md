# Bandgap reference simulation

## Schematic

![Image of BGR schematic](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor1.8v/Schematic.png)

## Bandgap OTA

![Image of BGR OTA](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor1.8v/OTA.png)

## a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region (Vds > Vdsat).

## b. Temperature variations

Use the command (.DC temp) then press netlist then press simulate. After simulation is done write the command (plot vref) to plot the reference voltage vs temp.

![Image of BGR Temp](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor1.8v/Vref_TEMP_1.8v.png)

## c. Supply variations

Use the command (.DC vin) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage vs vdd.

![Image of BGR vdd](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor1.8v/Vref_Vdd_1.8v.png)

## d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vdd vref) to plot the reference voltage and the input vs time.

![Image of BGR transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor1.8v/Vref_Transient_1.8v.png)

## e. PSRR analysis

Use the command (.AC vin) then press netlist then press simulate. After simulation is done write the command (plot vdb(vref)) to plot the PSRR in dB.

![Image of BGR PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor1.8v/PSRR_1.8v.png)

## f. Testbench netlist

The netlist of all previous analyses is below and for each analysis you want to do uncomment the lines of it.

![Image of BGR netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/Bandgap/Images/Bandgap1.8v/Transistor1.8v/BGR_netlist.png)

## Simulation results

Specification    | Achieved
-----------------| ------------------------------------
Reference output |              1.1v
Temp. variation  | 20mv over T from -40 deg to 125 deg
Supply variation | 3mv  over VDD from 1.6v to 2v 

Corners simulation:
   Process   |  TT  |  FF  |  SS  |  FS  |  SF
-------------|------|------|------|------|------
Vref at T=27 |1.114v|1.119v|1.107v|1.109v|1.123v
Vref at T=-45|1.111v|1.115v|1.107v|1.106v|1.119v
Vref at T=90 |1.113v|1.119v|1.104v|1.108v|1.123v
