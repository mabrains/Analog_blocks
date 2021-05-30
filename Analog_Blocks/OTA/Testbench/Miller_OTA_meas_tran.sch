v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 965 -1325 965 -1235 { lab=vdd}
N 965 -1045 965 -945 { lab=0}
N 715 -945 965 -945 { lab=0}
N 715 -1080 800 -1080 { lab=vp}
N 1130 -1140 1205 -1140 { lab=Vout}
N 525 -1325 965 -1325 { lab=vdd}
N 575 -1140 800 -1140 { lab=#net1}
N 575 -1210 575 -1140 { lab=#net1}
N 575 -1325 575 -1270 { lab=vdd}
N 1175 -1140 1175 -1070 { lab=Vout}
N 1175 -1010 1175 -945 { lab=0}
N 965 -945 1175 -945 { lab=0}
N 740 -1200 800 -1200 { lab=Vout}
N 740 -1300 740 -1200 { lab=Vout}
N 1175 -1300 1175 -1140 { lab=Vout}
N 740 -1300 1175 -1300 { lab=Vout}
C {devices/code.sym} 1010 -1435 0 0 {name=TT_MODELS
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/code_shown.sym} 1255 -1315 0 0 {name=NGSPICE1
only_toplevel=true
value="
*************************************************************************
*Source intialization
*************************************************************************
Vsup vdd 0 DC 1.8 AC 0 
Vpos vp 0 DC 0 AC 0
Vneg vn 0 DC 0 AC 0
*************************************************************************
*Transient analysis
*************************************************************************
.control
alter @Vpos[Sin] [ 0.9 1m 1Meg ]
tran 0.05u 5u 
plot vp Vout
let o= vout - vp
meas tran offset FIND o AT=1u
.endc
*************************************************************************
*Slew Rate analysis
*************************************************************************
.control
alter @Vpos[PULSE] = [ 0.2 1.8 1u 1p 1p 0.5u 1u ]
define SR(x,y) x/y
tran 0.01u 5u
plot vp Vout 
meas tran Trise TRIG v(Vout) VAL=0.4 RISE=2 TARG v(Vout) VAL=1.6 RISE=2
print SR(vdd,Trise)  
.endc
*************************************************************************
.end
" }
C {devices/lab_pin.sym} 525 -1325 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 715 -1080 0 0 {name=l3 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 715 -945 0 0 {name=l4 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1205 -1140 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/isource.sym} 575 -1240 0 0 {name=I0 value=20u}
C {devices/capa.sym} 1175 -1040 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {/home/eslam/Analog_blocks/Analog_Blocks/OTA/Schematic/Miller_OTA/Transistor1.8v/Miller_OTA_NMOS_1.8v.sym} 960 -1140 0 0 {name=x1}
