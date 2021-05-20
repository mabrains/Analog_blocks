v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1290 -890 1290 -830 { lab=#net1}
N 1120 -890 1120 -830 { lab=#net2}
N 1160 -920 1250 -920 { lab=Vb2}
N 1120 -1010 1120 -950 { lab=#net3}
N 1290 -1010 1290 -950 { lab=Vout}
N 1160 -1040 1250 -1040 { lab=Vb3}
N 1160 -1160 1250 -1160 { lab=#net3}
N 1290 -1130 1290 -1070 { lab=#net4}
N 1120 -1130 1120 -1070 { lab=#net5}
N 1180 -1160 1180 -980 { lab=#net3}
N 1120 -980 1180 -980 { lab=#net3}
N 1290 -1240 1290 -1190 { lab=Vdd}
N 1120 -1240 1290 -1240 { lab=Vdd}
N 1120 -1240 1120 -1190 { lab=Vdd}
N 1290 -770 1290 -740 { lab=#net6}
N 1120 -740 1290 -740 { lab=#net6}
N 1120 -770 1120 -740 { lab=#net6}
N 1200 -740 1200 -690 { lab=#net6}
N 1200 -630 1200 -600 { lab=0}
N 1200 -1040 1200 -1000 { lab=Vb3}
N 980 -1240 1120 -1240 { lab=Vdd}
N 790 -1240 980 -1240 { lab=Vdd}
N 1200 -660 1280 -660 { lab=0}
N 1280 -660 1280 -600 { lab=0}
N 1200 -600 1280 -600 { lab=0}
N 1120 -800 1290 -800 { lab=0}
N 1280 -800 1280 -660 { lab=0}
N 1290 -920 1380 -920 { lab=0}
N 1380 -920 1380 -600 { lab=0}
N 1280 -600 1380 -600 { lab=0}
N 1200 -920 1200 -860 { lab=Vb2}
N 1050 -920 1120 -920 { lab=0}
N 1050 -920 1050 -600 { lab=0}
N 1290 -1160 1380 -1160 { lab=Vdd}
N 1380 -1240 1380 -1160 { lab=Vdd}
N 1290 -1240 1380 -1240 { lab=Vdd}
N 1020 -1240 1020 -1160 { lab=Vdd}
N 1020 -1160 1120 -1160 { lab=Vdd}
N 1290 -1040 1380 -1040 { lab=Vdd}
N 1380 -1160 1380 -1040 { lab=Vdd}
N 1020 -1040 1120 -1040 { lab=Vdd}
N 1020 -1160 1020 -1040 { lab=Vdd}
N 680 -1240 790 -1240 { lab=Vdd}
N 680 -600 710 -600 { lab=0}
N 1290 -980 1440 -980 { lab=Vout}
N 1030 -800 1080 -800 { lab=Vp}
N 1330 -800 1400 -800 { lab=Vn}
N 1430 -980 1430 -930 { lab=Vout}
N 1430 -870 1430 -600 { lab=0}
N 1380 -600 1430 -600 { lab=0}
N 710 -600 1200 -600 { lab=0}
N 1120 -660 1160 -660 { lab=Vb1}
C {devices/lab_pin.sym} 680 -1240 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 680 -600 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1030 -800 0 0 {name=l3 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 1400 -800 0 1 {name=l4 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} 1440 -980 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} 1485 -1215 0 0 {name=NGSPICE
only_toplevel=true
value="
*AC Analysis Differential mode
*Vsup vdd 0 1.8
*VVb1 Vb1 0 0.9
*VVb2 Vb2 0 1.3
*VVb3 Vb3 0 0.45
*Vpos vp 0 DC 0.9 AC 1 
*Vneg 0 vn  DC -0.9 AC 1 
*.ac dec 10 1 50MEG
*AC Analysis Common mode
*Vsup vdd 0 1.8
*VVb1 Vb1 0 0.9
*VVb2 Vb2 0 1.3
*VVb3 Vb3 0 0.45
*Vpos vp 0 DC 0.9 AC 1 
*Vneg vn 0 DC 0.9 AC 1 
*.ac dec 10 1 50MEG
*Transient Analysis 
*Vsup vdd 0 1.8
*Vpos vp 0 SIN(0.9 1m 1Meg)
*VVb1 Vb1 0 0.9
*VVb2 Vb2 0 1.3
*VVb3 Vb3 0 0.45
*.tran 0.05u 2u
*Noise Analysis
*Vsup vdd 0 1.8
*Vpos vp 0 DC 0.9 AC 1 
*Vneg 0 vn  DC -0.9 AC 1 
*.noise v(vout) Vpos dec 10 1 50MEG Vneg dec 10 1 50MEG
*PSRR analysis
Vsup vdd 0 DC 1.8 AC 1
VVb1 Vb1 0 0.9
VVb2 Vb2 0 1.3
VVb3 Vb3 0 0.45
Vpos vp 0 DC 0.9  
Vneg vn 0 DC 0.9 
.ac dec 10 1 50MEG
" }
C {devices/code.sym} 1790 -1025 0 0 {name=TT_MODELS
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
C {devices/capa.sym} 1430 -900 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1200 -860 0 1 {name=l7 sig_type=std_logic lab=Vb2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1180 -660 0 0 {name=M9
L=1
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1100 -800 0 0 {name=M1
L=1
W=14
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1310 -800 0 1 {name=M2
L=1
W=14
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1140 -920 0 1 {name=M3
L=1
W=14
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1270 -920 0 0 {name=M4
L=1
W=14
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1140 -1040 0 1 {name=M5
L=1
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1270 -1040 0 0 {name=M6
L=1
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1140 -1160 0 1 {name=M7
L=1
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1270 -1160 0 0 {name=M8
L=1
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1120 -660 0 0 {name=l6 sig_type=std_logic lab=Vb1}
C {devices/lab_pin.sym} 1200 -1000 0 1 {name=l8 sig_type=std_logic lab=Vb3}
