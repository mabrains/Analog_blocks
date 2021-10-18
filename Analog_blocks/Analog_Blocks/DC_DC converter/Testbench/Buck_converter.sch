v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1000 -1160 1000 -1140 { lab=Vout}
N 1120 -1160 1120 -1140 { lab=Vout}
N 1000 -1160 1120 -1160 { lab=Vout}
N 1120 -1080 1120 -1040 { lab=0}
N 1000 -1040 1120 -1040 { lab=0}
N 1000 -1080 1000 -1040 { lab=0}
N 620 -1160 680 -1160 { lab=Vin}
N 850 -1160 850 -1130 { lab=Vs}
N 850 -1070 850 -1040 { lab=0}
N 620 -1040 1000 -1040 { lab=0}
N 710 -1120 710 -1090 { lab=Vg}
N 710 -1280 710 -1160 { lab=0}
N 1120 -1160 1180 -1160 { lab=Vout}
N 740 -1160 860 -1160 { lab=Vs}
N 920 -1160 930 -1160 { lab=#net1}
N 990 -1160 1000 -1160 { lab=Vout}
C {devices/capa.sym} 1000 -1110 0 0 {name=C1
m=1
value=200u
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 960 -1160 3 1 {name=L1
m=1
value=58u
footprint=1206
device=inductor}
C {devices/res.sym} 1120 -1110 0 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 620 -1040 0 0 {name=l1 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 710 -1280 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1180 -1160 0 1 {name=l3 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 620 -1160 0 0 {name=l4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 710 -1090 0 0 {name=l5 sig_type=std_logic lab=Vg}
C {devices/lab_pin.sym} 810 -1160 3 1 {name=l6 sig_type=std_logic lab=Vs}
C {devices/code_shown.sym} 585 -1465 0 0 {name=NGSPICE1
only_toplevel=true
value=" 
VVin Vin 0 5
VVG Vg Vs pulse( 0 5 0 1n 1n \{D*Ts\} \{Ts\})
.param D = 0.8
.param Ts = 40u
.tran 500u 4m
.end
" }
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 710 -1140 3 0 {name=M1
L=0.5
W=20
nf=1
mult=174
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} 890 -1160 3 1 {name=V1 value=0}
C {sky130_fd_pr/diode.sym} 850 -1100 0 1 {name=D1
model=diode_pw2nd_05v5
area=400
}
C {devices/code.sym} 1050 -1450 0 0 {name=TTTT_MODELS
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
