v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1110 -1420 1200 -1420 { lab=Vout}
N 700 -1480 790 -1480 { lab=Vn}
N 700 -1360 790 -1360 { lab=Vp}
N 950 -1660 950 -1500 { lab=Vdd}
N 950 -1340 950 -1180 { lab=0}
N 540 -1180 950 -1180 { lab=0}
N 610 -1420 790 -1420 { lab=#net1}
N 610 -1490 610 -1420 { lab=#net1}
N 610 -1660 610 -1550 { lab=Vdd}
N 540 -1660 950 -1660 { lab=Vdd}
N 1160 -1420 1160 -1350 { lab=Vout}
N 1160 -1290 1160 -1180 { lab=0}
N 950 -1180 1160 -1180 { lab=0}
C {devices/code.sym} 1290 -1660 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} 1280 -1440 0 0 {name=NGSPICE
only_toplevel=true
value="
*AC analysis
Vsup vdd 0 1.8
Vpos vp 0 DC 0.9 AC 1 
Vneg 0 vn  DC -0.9 AC 1 
.ac dec 10 1 120MEG
*Transient analysis
*Vpos vp 0 SIN(0.9 1m 1Meg)
*Vneg 0 vn SIN(-0.9 1m 1Meg)
*.tran 0.05u 2u
*Noise analysis
*.noise v(vout) Vpos dec 10 1 70MEG Vneg dec 10 1 70MEG
" }
C {/home/eslam/Analog_Design/OTA/Schematic/Folded_Cascode_OTA.sym} 950 -1420 0 0 {name=x1}
C {devices/isource.sym} 610 -1520 0 0 {name=I0 value=25u}
C {devices/lab_pin.sym} 540 -1660 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 540 -1180 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 700 -1480 0 0 {name=l3 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} 700 -1360 0 0 {name=l4 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 1200 -1420 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/capa.sym} 1160 -1320 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
