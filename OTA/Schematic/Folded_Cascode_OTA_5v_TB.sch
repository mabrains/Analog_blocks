v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1150 -520 -1060 -520 { lab=Vn}
N -1150 -400 -1060 -400 { lab=Vp}
N -1310 -220 -900 -220 { lab=0}
N -1240 -460 -1060 -460 { lab=#net1}
N -1240 -530 -1240 -460 { lab=#net1}
N -1240 -700 -1240 -590 { lab=Vdd}
N -1310 -700 -900 -700 { lab=Vdd}
N -690 -330 -690 -220 { lab=0}
N -900 -220 -690 -220 { lab=0}
N -700 -460 -640 -460 { lab=Vout}
N -690 -460 -690 -390 { lab=Vout}
N -900 -350 -900 -220 { lab=0}
N -900 -700 -900 -570 { lab=Vdd}
C {devices/code.sym} -770 -660 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} -590 -700 0 0 {name=NGSPICE
only_toplevel=true
value="
*AC analysis differential mode
*Vsup vdd 0 1.8
*Vpos vp 0 DC 0.9 AC 1 
*Vneg vn 0 DC 0.9 AC -1 
*.ac dec 10 1 100MEG
*AC analysis common mode
*Vsup vdd 0 1.8
*Vpos vp 0 DC 0.9 AC 1 
*Vneg vn 0 DC 0.9 AC 1 
*.ac dec 10 1 100MEG
*Transient analysis
*Vsup vdd 0 5
*Vpos vp 0 SIN(0.9 1m 1Meg)
*Vneg 0 vn SIN(-0.9 1m 1Meg)
*.tran 0.05u 2u
*Noise analysis
*Vpos vp 0 DC 0.9 AC 1 
*Vneg 0 vn  DC -0.9 AC 1 
*.noise v(vout) Vpos dec 10 1 70MEG Vneg dec 10 1 70MEG
*PSRR analysis
Vsup vdd 0 DC 1.8 AC 1
Vpos vp 0 DC 0.9 
Vneg vn 0 DC 0.9  
.ac dec 10 1 100MEG
" }
C {devices/isource.sym} -1240 -560 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} -1310 -700 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -1310 -220 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -1150 -520 0 0 {name=l3 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} -1150 -400 0 0 {name=l4 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} -640 -460 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/capa.sym} -690 -360 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {/home/eslam/Analog_Design/OTA/Schematic/Folded_Cascode_OTA_5v.sym} -900 -460 0 0 {name=x1}
