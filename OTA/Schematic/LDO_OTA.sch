v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2130 -990 2130 -930 { lab=#net1}
N 1930 -930 2130 -930 { lab=#net1}
N 1930 -990 1930 -930 { lab=#net1}
N 2130 -1180 2130 -1050 { lab=#net2}
N 1930 -1180 1930 -1050 { lab=#net3}
N 1970 -1210 2090 -1210 { lab=#net3}
N 2130 -1290 2130 -1240 { lab=Vdd}
N 1930 -1290 2130 -1290 { lab=Vdd}
N 1930 -1290 1930 -1240 { lab=Vdd}
N 2010 -1210 2010 -1150 { lab=#net3}
N 1930 -1150 2010 -1150 { lab=#net3}
N 2030 -930 2030 -880 { lab=#net1}
N 2030 -820 2030 -770 { lab=0}
N 1750 -850 1990 -850 { lab=#net4}
N 1710 -820 1710 -770 { lab=0}
N 1710 -770 2030 -770 { lab=0}
N 1710 -990 1710 -880 { lab=#net4}
N 1790 -930 1790 -850 { lab=#net4}
N 1710 -930 1790 -930 { lab=#net4}
N 1710 -1290 1710 -1040 { lab=Vdd}
N 1710 -1290 1930 -1290 { lab=Vdd}
N 1630 -850 1710 -850 { lab=0}
N 1630 -850 1630 -770 { lab=0}
N 1630 -770 1710 -770 { lab=0}
N 2130 -1210 2210 -1210 { lab=Vdd}
N 2210 -1290 2210 -1210 { lab=Vdd}
N 2130 -1290 2210 -1290 { lab=Vdd}
N 1850 -1210 1930 -1210 { lab=Vdd}
N 1850 -1290 1850 -1210 { lab=Vdd}
N 2050 -1020 2130 -1020 { lab=0}
N 1930 -1020 2050 -1020 { lab=0}
N 2030 -850 2110 -850 { lab=0}
N 2110 -850 2110 -770 { lab=0}
N 2030 -770 2110 -770 { lab=0}
N 2110 -770 2410 -770 { lab=0}
N 2110 -1020 2110 -850 { lab=0}
N 1660 -1290 1710 -1290 { lab=Vdd}
N 2370 -1100 2370 -870 { lab=Vout}
N 2230 -1130 2330 -1130 { lab=#net2}
N 2230 -1130 2230 -1080 { lab=#net2}
N 2130 -1080 2230 -1080 { lab=#net2}
N 2150 -840 2330 -840 { lab=#net4}
N 2150 -840 2150 -800 { lab=#net4}
N 1950 -800 2150 -800 { lab=#net4}
N 1950 -850 1950 -800 { lab=#net4}
N 2370 -810 2370 -770 { lab=0}
N 2370 -1290 2370 -1160 { lab=Vdd}
N 2370 -1080 2470 -1080 { lab=Vout}
N 1860 -1020 1890 -1020 { lab=Vp}
N 2370 -1130 2400 -1130 { lab=Vdd}
N 2400 -1290 2400 -1130 { lab=Vdd}
N 2170 -1020 2210 -1020 { lab=Vn}
N 2320 -1080 2370 -1080 { lab=Vout}
N 2230 -1080 2260 -1080 { lab=#net2}
N 2210 -1290 2400 -1290 { lab=Vdd}
N 2410 -770 2450 -770 { lab=0}
N 2450 -840 2450 -770 { lab=0}
N 2370 -840 2450 -840 { lab=0}
N 2440 -1080 2440 -1020 { lab=Vout}
N 2440 -960 2440 -840 { lab=0}
C {devices/lab_pin.sym} 1660 -1290 0 0 {name=l5 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 1710 -1020 0 0 {name=I0 value=30u}
C {devices/lab_pin.sym} 1630 -770 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1860 -1020 0 0 {name=l1 sig_type=std_logic lab=Vp}
C {devices/capa.sym} 2290 -1080 3 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1950 -1210 0 1 {name=M2
L=0.5
W=8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2110 -1210 0 0 {name=M3
L=0.5
W=8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2350 -1130 0 0 {name=M8
L=0.5
W=47
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2150 -1020 0 1 {name=M5
L=0.5
W=1.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1910 -1020 0 0 {name=M4
L=0.5
W=1.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2010 -850 0 0 {name=M7
L=0.5
W=2.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1730 -850 0 1 {name=M6
L=0.5
W=2.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2350 -840 0 0 {name=M9
L=0.5
W=7
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
C {devices/lab_pin.sym} 2210 -1020 0 1 {name=l3 sig_type=std_logic lab=Vn}
C {devices/capa.sym} 2440 -990 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2470 -1080 0 1 {name=l4 sig_type=std_logic lab=Vout}
C {devices/code.sym} 1740 -1470 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} 1920 -1470 0 0 {name=NGSPICE
only_toplevel=true
value="
Vsup Vdd 0 2.5
Vpos vp 0 DC 0.9 AC 1 
Vneg 0 vn  DC -0.9 AC 1 
.ac dec 10 1 70MEG
*Vpos vp 0 SIN(0.9 1m 1Meg)
*Vneg 0 vn SIN(-0.9 1m 1Meg)
*.tran 0.05u 2u
*.noise v(vout) Vpos dec 10 1 70MEG Vneg dec 10 1 70MEG
" }
