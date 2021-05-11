v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2040 -1170 2180 -1170 { lab=Vout}
N 2120 -1170 2120 -1140 { lab=Vout}
N 2120 -1080 2120 -920 { lab=0}
N 1870 -920 2120 -920 { lab=0}
N 1870 -1080 1870 -920 { lab=0}
N 1870 -1360 1870 -1260 { lab=Vdd}
N 1640 -1210 1700 -1210 { lab=Vn}
N 1640 -1130 1700 -1130 { lab=Vp}
N 1580 -1170 1700 -1170 { lab=#net1}
N 1580 -1240 1580 -1170 { lab=#net1}
N 1580 -1320 1580 -1300 { lab=Vdd}
N 1580 -1320 1870 -1320 { lab=Vdd}
C {/home/eslam/Analog_Design/LDO/Schematic/Error_Amplifier.sym} 1860 -1170 0 0 {name=x1}
C {devices/code_shown.sym} 2265 -1345 0 0 {name=NGSPICE
only_toplevel=true
value="
*AC Analysis Differential mode
*Vsup vdd 0 5
*Vpos vp 0 DC 2.5 AC 1 
*Vneg vn 0 DC 2.5 AC -1 
*.ac dec 10 1 150MEG
*AC Analysis Common mode
*Vsup vdd 0 5
*Vpos vp 0 DC 2.5 AC 1 
*Vneg vn 0 DC 2.5 AC 1 
*.ac dec 10 1 150MEG
*Transient Analysis 
*Vsup vdd 0 2.2
*Vpos vp 0 SIN(1.1 1m 1Meg)
*.tran 0.05u 2u
*Noise Analysis
*Vsup vdd 0 2.2
*Vpos vp 0 DC 1.1 AC 1 
*Vneg 0 vn  DC -1.1 AC 1 
*.noise v(vout) Vpos dec 10 1 100MEG Vneg dec 10 1 100MEG
*PSRR analysis
Vsup vdd 0 DC 5 AC 1
Vpos vp 0 DC 2.5  
Vneg vn 0 DC 2.5 
.ac dec 10 1 150MEG
*Vsup vdd 0 0
*Vpos vp 0 0
*Vneg vn 0 0
*.control
*   alter Vsup dc = 5
*   alter Vpos dc = 2.5 
*   alter Vpos ac = 1
*    alter Vneg dc = 2.5 
*    alter Vpos ac = -1
*
*    ac dec 10 1 100MEG
*
*    plot db(vout)
*    *wrdata AC_analysis db(vout)
*
*    alter Vsup dc = 5
*    alter Vpos dc = 0
*    alter Vpos ac = 0
*    alter Vneg dc = 0
*    alter Vpos ac = 0
*    alter @Vpos [ sin ] [1m 2.5 1Meg]
*    alter @Vneg [ sin ] [-1m 2.5 1Meg]

*   tran 0.05u 2u
*    plot vp vn vout
*    wrdata Trans_analysis vp vn vout
*.endc

" }
C {devices/code.sym} 2610 -1255 0 0 {name=TT_MODELS
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
C {devices/capa.sym} 2120 -1110 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/isource.sym} 1580 -1270 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 1870 -1360 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 1870 -920 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1640 -1130 0 0 {name=l4 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 2180 -1170 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 1640 -1210 0 0 {name=l3 sig_type=std_logic lab=Vn}
