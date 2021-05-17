v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 800 -560 930 -560 { lab=#net1}
N 1080 -720 1080 -630 { lab=Vdd}
N 1080 -490 1080 -420 { lab=0}
N 800 -420 1080 -420 { lab=0}
N 800 -560 800 -520 { lab=#net1}
N 800 -460 800 -420 { lab=0}
N 880 -600 930 -600 { lab=Vp}
N 880 -520 930 -520 { lab=Vn}
N 1230 -560 1280 -560 { lab=Vout}
N 1260 -560 1260 -520 { lab=Vout}
N 1260 -460 1260 -420 { lab=0}
N 1080 -420 1260 -420 { lab=0}
C {/home/eslam/Analog_Design/OTA/Schematic/Miller_OTA_PMOS.sym} 1090 -560 0 0 {name=x1}
C {devices/isource.sym} 800 -490 0 0 {name=I0 value=20u}
C {devices/capa.sym} 1260 -490 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1080 -720 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 880 -600 0 0 {name=l2 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 880 -520 0 0 {name=l3 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} 1280 -560 0 1 {name=l4 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 800 -420 0 0 {name=l5 sig_type=std_logic lab=0}
C {devices/code_shown.sym} 1355 -805 0 0 {name=NGSPICE
only_toplevel=true
value="
*AC Analysis Differential mode
Vsup vdd 0 1.8
Vpos vp 0 DC 0.9 AC 1 
Vneg vn 0 DC 0.9 AC -1
.ac dec 10 1 100MEG
*AC Analysis Common mode
*Vsup vdd 0 1.8
*Vpos vp 0 DC 0.9 AC 1 
*Vneg vn 0 DC 0.9 AC 1 
*.ac dec 10 1 100MEG
*Transient Analysis 
*Vsup vdd 0 1.8
*Vpos vp 0 SIN(0.9 1m 1Meg)
*.tran 0.05u 2u
*Noise Analysis
*Vsup vdd 0 1.8
*Vpos vp 0 DC 0.9 AC 1 
*Vneg 0 vn  DC -0.9 AC 1 
*.noise v(vout) Vpos dec 10 1 50MEG Vneg dec 10 1 50MEG
*PSRR analysis
*Vsup vdd 0 DC 1.8 AC 1
*Vpos vp 0 DC 0.9  
*Vneg vn 0 DC 0.9 
*.ac dec 10 1 100MEG
" }
C {devices/code.sym} 1690 -655 0 0 {name=TT_MODELS
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
