v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1360 -1440 1360 -1340 { lab=#net1}
N 1360 -1560 1360 -1500 { lab=Vdd}
N 1320 -1560 1360 -1560 { lab=Vdd}
N 1360 -1340 1430 -1340 { lab=#net1}
N 1320 -1380 1430 -1380 { lab=Vp}
N 1580 -1560 1580 -1420 { lab=Vdd}
N 1360 -1560 1580 -1560 { lab=Vdd}
N 1400 -1300 1430 -1300 { lab=#net2}
N 1400 -1300 1400 -1200 { lab=#net2}
N 1730 -1340 1840 -1340 { lab=Vout}
N 1580 -1260 1580 -1120 { lab=0}
N 1320 -1120 1580 -1120 { lab=0}
N 1810 -1340 1810 -1290 { lab=Vout}
N 1810 -1230 1810 -1120 { lab=0}
N 1580 -1120 1810 -1120 { lab=0}
N 1740 -1340 1740 -1200 { lab=Vout}
N 1670 -1200 1740 -1200 { lab=Vout}
N 1330 -1200 1610 -1200 { lab=#net2}
N 1220 -1200 1270 -1200 { lab=Vtest}
C {devices/lab_pin.sym} 1320 -1560 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 1360 -1470 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 1320 -1380 0 0 {name=l2 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 1320 -1120 0 0 {name=l4 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1840 -1340 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} 2045 -1605 0 0 {name=NGSPICE
only_toplevel=true
value="
***************************************************
*Source intialization
***************************************************
Vsup vdd 0 DC 1.8 AC 0 
Vpos vp 0 DC 0 AC 0
Vin vtest 0 DC 0 AC 0
****************************************************
*Stability analysis 
****************************************************
.control
alter Vpos DC = 0.9 
alter Vin AC = 1
set units = degrees
ac dec 10 1 200MEG
show
plot db(Vout)
plot phase(Vout) 
meas ac Avd FIND vdb(Vout) AT=10
meas ac GBW WHEN vdb(Vout)= 0
meas ac PM FIND vp(Vout) WHEN vdb(Vout)=0
.endc
.end
" }
C {devices/ind.sym} 1640 -1200 1 0 {name=L1
m=1
value=1G
footprint=1206
device=inductor}
C {devices/capa.sym} 1300 -1200 3 0 {name=C2
m=1
value=1G
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1220 -1200 0 0 {name=l3 sig_type=std_logic lab=Vtest}
C {devices/capa.sym} 1810 -1260 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {/home/eslam/mabrains/Analog_blocks/Analog_Blocks/OTA/Schematic/Miller_OTA/Transistor5v/Miller_OTA_NMOS.sym} 1590 -1340 0 0 {name=x1}
C {devices/code.sym} 1700 -1590 0 0 {name=TT_MODELS
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
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice"
.include "~/mabrains/Analog_blocks/models/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__tt_discrete.corner.spice"
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
