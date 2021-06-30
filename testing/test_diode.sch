v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 -230 310 -230 { lab=Vin}
N 370 -230 460 -230 { lab=Vout1}
N 420 -230 420 -190 { lab=Vout1}
N 420 -130 420 -80 { lab=0}
N 220 -80 420 -80 { lab=0}
N 600 -230 660 -230 { lab=Vin}
N 720 -230 830 -230 { lab=Vout2}
N 800 -230 800 -190 { lab=Vout2}
N 800 -130 800 -80 { lab=0}
N 410 -80 800 -80 { lab=0}
C {devices/code.sym} 720 -420 0 0 {name=TTTT_MODELS1
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="

.param mc_mm_switch=0
.param mc_pr_switch=0
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.tech/ngspice/corners/tt/nonfet.spice"
* Mismatch parameters
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8__mismatch.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8__mismatch.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice"
.include "~/mabrains/pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice"
* Resistor/Capacitor
.include "~/mabrains/pdks/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical.spice"
.include "~/mabrains/pdks/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice"
* Special cells
.include "~/mabrains/pdks/sky130A/libs.tech/ngspice/corners/tt/specialized_cells.spice"
* All models
.include "~/mabrains/pdks/sky130A/libs.tech/ngspice/all.spice"
* Corner
.include "~/mabrains/pdks/sky130A/libs.tech/ngspice/corners/tt/rf.spice"


"}
C {devices/code_shown.sym} 195 -465 0 0 {name=NGSPICE1
only_toplevel=true
value="
VVin Vin 0 pulse( 0 3.6 1u 1n 1n 1u 2u )
.tran 1u 3u
.end
" }
C {sky130_fd_pr/diode.sym} 340 -230 1 1 {name=D1
model=diode_pw2nd_05v5
area=10000
}
C {devices/res.sym} 420 -160 0 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 220 -230 0 0 {name=l4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 460 -230 0 1 {name=l3 sig_type=std_logic lab=Vout1}
C {devices/lab_pin.sym} 220 -80 0 0 {name=l1 sig_type=std_logic lab=0}
C {sky130_fd_pr/lvsdiode.sym} 690 -230 1 1 {name=D2
model=diode_pw2nd_05v5
area=10000
}
C {devices/res.sym} 800 -160 0 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 600 -230 0 0 {name=l2 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 830 -230 0 1 {name=l5 sig_type=std_logic lab=Vout2}
