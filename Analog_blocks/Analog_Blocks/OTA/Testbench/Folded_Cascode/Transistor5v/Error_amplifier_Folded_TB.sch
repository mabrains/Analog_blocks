v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 920 -2100 920 -2040 { lab=Vdd}
N 1480 -1880 1480 -1840 { lab=Vout}
N 880 -2100 920 -2100 { lab=Vdd}
N 1020 -1940 1090 -1940 { lab=Vn}
N 1020 -1820 1090 -1820 { lab=Vp}
N 920 -1980 920 -1880 { lab=#net1}
N 920 -2100 1250 -2100 { lab=Vdd}
N 1040 -1640 1250 -1640 { lab=0}
N 1480 -1780 1480 -1640 { lab=0}
N 1250 -1640 1480 -1640 { lab=0}
N 1450 -1880 1500 -1880 { lab=Vout}
N 1250 -1770 1250 -1640 { lab=0}
N 1250 -2100 1250 -1990 { lab=Vdd}
N 920 -1880 1090 -1880 { lab=#net1}
C {devices/lab_pin.sym} 880 -2100 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 920 -2010 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 1020 -1820 0 0 {name=l2 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 1020 -1940 0 0 {name=l3 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} 1040 -1640 0 0 {name=l4 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1500 -1880 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/capa.sym} 1480 -1810 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} 1565 -2285 0 0 {name=NGSPICE
only_toplevel=true
value="
***************************************************
*Source intialization
***************************************************
Vsup vdd 0 DC 2 AC 0 
Vpos vp 0 DC 0 AC 0
Vneg vn 0 DC 0 AC 0
****************************************************
*DC analysis 
****************************************************
.control
alter Vpos DC = 1.2 
alter Vneg DC = 1.2 
define Power(x,y) -(x*y)
op
show
print Power(v(vdd),Vsup#branch)
.endc
*****************************************************
*Noise analysis
*****************************************************
.control
alter Vpos DC = 1.2 
alter Vpos AC = 1
alter Vneg DC = 1.2 
alter Vneg AC = -1
noise v(vout) Vpos dec 10 1 50MEG Vneg dec 10 1 50MEG
setplot noise1
plot inoise_spectrum 
.endc
****************************************************
*AC analysis differential mode
****************************************************
.control
alter Vpos DC = 1.2 
alter Vpos AC = 1
alter Vneg DC = 1.2 
alter Vneg AC = -1
set units = degrees
ac dec 10 1 200MEG
plot db(Vout)
plot phase(Vout) 
meas ac Avd FIND vdb(Vout) AT=10
meas ac GBW WHEN vdb(Vout)= 0
let P = 180+vp(Vout)
meas ac PM FIND P WHEN vdb(Vout)=0
.endc
*****************************************************
*AC analysis common mode
*****************************************************
.control
alter Vpos DC = 1.2 
alter Vpos AC = 1
alter Vneg DC = 1.2 
alter Vneg AC = 1
ac dec 10 1 200MEG
plot db(Vout)
meas ac Acm FIND vdb(Vout) AT=10
.endc
*****************************************************
*PSRR analysis
*****************************************************
.control
alter Vsup AC = 1
alter Vpos DC = 1.2
alter Vpos AC = 0 
alter Vneg DC = 1.2
alter Vneg AC = 0
ac dec 10 1 200MEG
plot db(Vout)
meas ac PSR_1k FIND vdb(Vout) AT=1k
meas ac PSR_1M FIND vdb(vout) AT=1Meg 
.endc
*****************************************************
.end
" }
C {devices/code.sym} 910 -2280 0 0 {name=TT_MODELS
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
C {/home/eslam/mabrains/Analog_blocks/Analog_Blocks/LDO/Schematic/LDO_Folded_1.8v/Error_amplifier_Folded.sym} 1250 -1880 0 0 {name=x1}
