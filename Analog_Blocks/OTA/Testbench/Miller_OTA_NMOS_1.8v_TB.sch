v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1290 -940 -1290 -850 { lab=vdd}
N -1290 -660 -1290 -560 { lab=0}
N -1540 -560 -1290 -560 { lab=0}
N -1540 -815 -1455 -815 { lab=vn}
N -1540 -695 -1455 -695 { lab=vp}
N -1125 -755 -1050 -755 { lab=Vout}
N -1730 -940 -1290 -940 { lab=vdd}
N -1680 -755 -1455 -755 { lab=#net1}
N -1680 -825 -1680 -755 { lab=#net1}
N -1680 -940 -1680 -885 { lab=vdd}
N -1080 -755 -1080 -685 { lab=Vout}
N -1080 -625 -1080 -560 { lab=0}
N -1290 -560 -1080 -560 { lab=0}
C {devices/code_shown.sym} -995 -1155 0 0 {name=NGSPICE
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
C {devices/lab_pin.sym} -1730 -940 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -1540 -815 0 0 {name=l2 sig_type=std_logic lab=vn}
C {devices/lab_pin.sym} -1540 -695 0 0 {name=l3 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} -1540 -560 0 0 {name=l4 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -1050 -755 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/isource.sym} -1680 -855 0 0 {name=I0 value=20u}
C {devices/capa.sym} -1080 -655 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -1180 -945 0 0 {name=TT_MODELS
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
C {/home/eslam/Analog_Design/Analog_Blocks/OTA/Schematic/Miller_OTA/Transistor1.8v/Miller_OTA_NMOS_1.8v.sym} -1295 -755 0 0 {name=x1}
