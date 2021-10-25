# LDO Simulation

We have an enable switch so all the following analysis when the enable signal is high.

## Schematic

![Image of LDO schematic](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Testbench_schematic.png)

## Error Amplifier 

![Image of LDO_Error amplifier](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Error_Amp.png)

## Bandgap

![Image of LDO_BGR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Bandgap_symbol.png)


## a. DC analysis

We used dc analysis for displaying the operating point for proper biasing of transistors and also dc sweep of output voltage against variations in supply and temprature to calculate dropout voltage,line regulation,temperature coefficient.

## Supply variation
We made dc sweep on the supply and plotted voltage of the output node and vdd node overlaid on the same plot

![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/dcsweep.png)

## Temperature variation
We made dc sweep on temperature from 0 to 85°C and plotted the output voltage vs temperature from which we found temperature coeffiecient in ppm/°C.

![Image of LDO_Vout_vs_Vin](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tempsweep.png)

## c. AC analysis
## PSRR
We used AC analysis by injecting small ac signal over the supply and plotted the output voltage in dB which refers to the PSRR vs Frequency.

![Image of LDO_PSRR](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/psrr.png)
## Stability analysis
We made the above testbench to cut the feedback loop of the ldo and inject ac signal and then measure the loop gain and phase to find phase margin.
## d. Transient analysis

## Line Transient 
We used transient analysis to show the line transient by varying the supply from 0 to vdd at different supply levels corners such that the nominal supply is 2.3v.
When VDD varies from 0 to 2.3v
![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tran2.3v.png)
When VDD varies from 0 to 2.07v
![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tran2.1v.png)
When VDD varies from 0 to 2.53v
![Image of LDO_Transient](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/tran2.5v.png)
## Load Transient 
The load is varied from 0.1mA to 10mA where the load is modeled as current source varied as PWL source.
![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/load_transient.png)
## e. Testbench netlist

The netlist of all previous analyses is below or you can simply run it using script "LDO_script.bash" existed in scripts folder.

![Image of LDO_netlist](https://github.com/mabrains/Analog_blocks/blob/main/Analog_Blocks/LDO/Images/LDO_v2/Testbench.png)

## Simulation results
The typical conditions are tt corner ,load of 50uA, T=27°C , VDD=2.3V , We have a script to automate running process corners then getting their statistical distribution where the variation of the load from 50uA till 100mA is included in the corners  

  Specification  |      TT                  
-----------------| ---------------
Temperature Coeffiecient   | 49.4 ppm/°C
Dropout Voltage            | 0.124mV
Line Regulation            | 0.0325 mv/v
Load Regulation            | 0.06mV    IL=0.1mA till IL=10mA
PSRR @ 100Hz               | 88.1dB
PSRR @ 100kHz              | 44.7dB
Load range                 | 50uA -> 100mA
Phase Margin               | 50.1°
Quiescent Current          | 130uA
