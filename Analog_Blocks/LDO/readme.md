# LDO Simulation

## Schematic

![Image of LDO schematic](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Testbench_schematic.png)

## Error Amplifier 

![Image of LDO_Error amplifier](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Error_Amp.png)

## Bandgap

![Image of LDO_BGR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Bandgap_symbol.png)


## a. DC analysis

Use the command (.op) then press netlist then press simulate. After simulation is done write the command (show) this command will display all the transistors parameters
and ensure that all mosfets are in saturation region (Vds > Vdsat).

## b. Vout/Vin charactersitics

Use the command (.DC vin) then press netlist then press simulate. After simulation is done write the command (plot vin vout) to plot vout vs vin.

![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/dcsweep.png)

## c. PSRR analysis

Use the command (.AC vin) then press netlist then press simulate. After simulation is done write the command (plot db(vout)) to plot the PSRR in dB.

![Image of LDO_PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/psrr.png)

## d. Transient analysis

Use the command (.tran) then press netlist then press simulate. After simulation is done write the command (plot vin vout) to plot vin and vout vs time.
When VDD varies from 0 to 2.3v
![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tran2.3v.png)
When VDD varies from 0 to 2.1v
![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tran2.1v.png)
When VDD varies from 0 to 2.5v
![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tran2.5v.png)

## e. Testbench netlist

The netlist of all previous analyses is below or you can simply run it using script "LDO_script.bash" existed in scripts folder.

![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Testbench.png)

## Simulation results
The typical conditions are tt corner ,load of 50uA, T=27°C , VDD=2.3V , We have a script to automate running process corners then getting their statistical distribution where the variation of the load from 50uA till 100mA is included in the corners  

  Specification  |      TT                  
-----------------| ---------------
Temperature Coeffiecient   | 40.7 ppm/°C
Dropout Voltage            | 0.124mV
Line Regulation            | 0.1787 mv/v
Load Regulation            | 0.153mV    IL=0.1mA till IL=100mA
PSRR @ 1KHz                | 72.4dB
PSRR @ 100kHz              | 26.9dB
Load range                 | 50uA -> 100mA
Phase Margin               | 54.7°
Quiescent Current          | 127uA
