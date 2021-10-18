v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 570 -1850 570 -1790 { lab=Vdd}
N 390 -1850 570 -1850 { lab=Vdd}
N 570 -1630 570 -1550 { lab=0}
N 390 -1550 570 -1550 { lab=0}
N 670 -1710 750 -1710 { lab=Vref}
C {devices/lab_pin.sym} 390 -1850 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 390 -1550 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 750 -1710 0 1 {name=l3 sig_type=std_logic lab=Vref}
C {devices/code_shown.sym} 805 -2115 0 0 {name=NGSPICE1
only_toplevel=true
value=" 
************************************************
*Source initialization
************************************************
Vsup Vdd 0 DC 0 AC 0
************************************************
*Temp variation
************************************************
.control
alter Vsup DC = 1.8
dc temp -40 120 1
show
plot vref
meas DC Vref_27 FIND Vref AT=27
meas DC Vref_neg40 FIND Vref AT=-40
meas DC Vref_120 FIND Vref AT=120 
print Vref_120-Vref_27
print Vref_neg40-Vref_27
.endc
************************************************
*Supply variation
************************************************
.control
dc Vsup 0 2.5 0.1
plot vdd vref
meas DC Vref_nom FIND Vref AT=1.8
meas DC Vref_Sup_pos10per FIND Vref AT=1.62
meas DC Vref_Sup_neg10per FIND Vref AT=1.98
.endc
************************************************
*PSRR analysis
************************************************
.control
alter Vsup DC = 1.8
alter Vsup AC = 1  
ac dec 10 1 100MEG
plot db(vref)
meas ac PSR_1k FIND vdb(Vref) AT=1k
meas ac PSR_1M FIND vdb(vref) AT=1Meg 
.endc
************************************************
*Transient analysis
************************************************
.control
alter @Vsup[pwl] = [ 0 0 100u 0 200u 2.5 500u 2.5 ]
tran 100u 500u
plot vdd vref
.endc
************************************************
.end
" }
C {devices/code.sym} 630 -2050 0 0 {name=TTTT_MODELS
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="

.param mc_mm_switch=0
.param mc_pr_switch=0
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/corners/tt/nonfet.spice"
* Mismatch parameters
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice"
* Resistor/Capacitor
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice"
* Special cells
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/corners/tt/specialized_cells.spice"
* All models
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/all.spice"
* Corner
.include "~/mabrains/Analog_blocks/models/sky130A/libs.tech/ngspice/corners/tt/rf.spice"


"}
C {/home/eslam/mabrains/Analog_blocks/Analog_Blocks/Bandgap/Schematics/BGR1.8v/Bandgap1.8v.sym} 570 -1710 0 0 {name=x1}
