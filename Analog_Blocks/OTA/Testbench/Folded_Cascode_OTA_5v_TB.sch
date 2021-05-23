v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1730 -1060 -1640 -1060 { lab=Vn}
N -1730 -940 -1640 -940 { lab=Vp}
N -1890 -760 -1480 -760 { lab=0}
N -1820 -1000 -1640 -1000 { lab=#net1}
N -1820 -1070 -1820 -1000 { lab=#net1}
N -1820 -1240 -1820 -1130 { lab=Vdd}
N -1890 -1240 -1480 -1240 { lab=Vdd}
N -1270 -870 -1270 -760 { lab=0}
N -1480 -760 -1270 -760 { lab=0}
N -1280 -1000 -1220 -1000 { lab=Vout}
N -1270 -1000 -1270 -930 { lab=Vout}
N -1480 -890 -1480 -760 { lab=0}
N -1480 -1240 -1480 -1110 { lab=Vdd}
C {devices/code.sym} -1680 -1420 0 0 {name=TT_MODELS
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
C {devices/isource.sym} -1820 -1100 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} -1890 -1240 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -1890 -760 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -1730 -1060 0 0 {name=l3 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} -1730 -940 0 0 {name=l4 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} -1220 -1000 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/capa.sym} -1270 -900 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {/home/eslam/Analog_Design/Analog_Blocks/OTA/Schematic/Folded_Cascode_OTA/Transitor5v/Folded_Cascode_OTA_5v.sym} -1480 -1000 0 0 {name=x1}
C {devices/code_shown.sym} -1075 -1575 0 0 {name=NGSPICE
only_toplevel=true
value="
***************************************************
*Source intialization
***************************************************
Vsup vdd 0 DC 1.8 AC 0 
Vpos vp 0 DC 0 AC 0
Vneg vn 0 DC 0 AC 0
*****************************************************
*Noise analysis
*****************************************************
.control
alter Vpos DC = 0.9 
alter Vpos AC = 1
alter Vneg DC = 0.9 
alter Vneg AC = -1
noise v(vout) Vpos dec 10 1 50MEG Vneg dec 10 1 50MEG
setplot noise1
plot inoise_spectrum 
.endc
****************************************************
*AC analysis differential mode
****************************************************
.control
alter Vpos DC = 0.9 
alter Vpos AC = 1
alter Vneg DC = 0.9 
alter Vneg AC = -1
ac dec 10 1 100MEG
show
plot db(Vout)
plot 180/pi*phase(Vout) 
.endc
*****************************************************
*AC analysis common mode
*****************************************************
.control
alter Vpos DC = 0.9 
alter Vpos AC = 1
alter Vneg DC = 0.9 
alter Vneg AC = 1
ac dec 10 1 100MEG
plot db(Vout)
.endc
*****************************************************
*PSRR analysis
*****************************************************
.control
alter Vsup AC = 1
alter Vpos DC = 0.9
alter Vpos AC = 0 
alter Vneg DC = 0.9
alter Vneg AC = 0
ac dec 10 1 100MEG
plot db(Vout)
.endc
*****************************************************
*Transient analysis
******************************************************
.control
alter @Vpos[Sin] [ 0.9 1m 1Meg ]
alter @Vneg[Sin] [ 0.9 -1m 1Meg ]
tran 0.05u 10u
plot vp vn 
plot Vout
.endc
****************************************************** 
.end
" }
