v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1580 -1420 1580 -1280 { lab=Vdd}
N 1360 -1200 1430 -1200 { lab=#net1}
N 1360 -1300 1360 -1200 { lab=#net1}
N 1360 -1420 1360 -1360 { lab=Vdd}
N 1320 -1240 1430 -1240 { lab=Vp}
N 1320 -1420 1580 -1420 { lab=Vdd}
N 1320 -1160 1430 -1160 { lab=Vn}
N 1580 -1120 1580 -1040 { lab=0}
N 1320 -1040 1580 -1040 { lab=0}
N 1730 -1200 1780 -1200 { lab=Vout}
N 1760 -1200 1760 -1160 { lab=Vout}
N 1760 -1100 1760 -1040 { lab=0}
N 1580 -1040 1760 -1040 { lab=0}
C {devices/code.sym} 2180 -1275 0 0 {name=TT_MODELS
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
C {devices/lab_pin.sym} 1320 -1420 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 1360 -1330 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 1320 -1240 0 0 {name=l2 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 1320 -1160 0 0 {name=l3 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} 1320 -1040 0 0 {name=l4 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1780 -1200 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/capa.sym} 1760 -1130 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {/home/eslam/Analog_Design/Analog_Blocks/OTA/Schematic/Miller_OTA/Transistor5v/Miller_OTA_NMOS.sym} 1590 -1200 0 0 {name=x1}
C {devices/code_shown.sym} 2345 -1865 0 0 {name=NGSPICE1
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
alter Vpos DC = 1
alter Vpos AC = 1
alter Vneg DC = 1 
alter Vneg AC = -1
noise v(vout) Vpos dec 10 1 50MEG Vneg dec 10 1 50MEG
setplot noise1
plot inoise_spectrum 
.endc
****************************************************
*AC analysis differential mode
****************************************************
.control
alter Vpos DC = 1 
alter Vpos AC = 1
alter Vneg DC = 1 
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
alter Vpos DC = 1 
alter Vpos AC = 1
alter Vneg DC = 1 
alter Vneg AC = 1
ac dec 10 1 100MEG
plot db(Vout)
.endc
*****************************************************
*PSRR analysis
*****************************************************
.control
alter Vsup AC = 1
alter Vpos DC = 1
alter Vpos AC = 0 
alter Vneg DC = 1
alter Vneg AC = 0
ac dec 10 1 100MEG
plot db(Vout)
.endc
*****************************************************
*Transient analysis
******************************************************
.control
alter @Vpos[Sin] [ 1 1m 1Meg ]
alter @Vneg[Sin] [ 1 -1m 1Meg ]
tran 0.05u 10u
plot vp vn 
plot Vout
.endc
****************************************************** 
.end
" }
