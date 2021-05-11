v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1600 -950 1600 -830 { lab=#net1}
N 1420 -950 1420 -830 { lab=#net2}
N 1460 -800 1560 -800 { lab=#net2}
N 1600 -770 1600 -710 { lab=Gnd}
N 1420 -710 1600 -710 { lab=Gnd}
N 1420 -770 1420 -710 { lab=Gnd}
N 1480 -850 1480 -800 { lab=#net2}
N 1420 -850 1480 -850 { lab=#net2}
N 1340 -800 1420 -800 { lab=Gnd}
N 1340 -800 1340 -710 { lab=Gnd}
N 1340 -710 1420 -710 { lab=Gnd}
N 1600 -800 1680 -800 { lab=Gnd}
N 1680 -800 1680 -710 { lab=Gnd}
N 1600 -710 1680 -710 { lab=Gnd}
N 1420 -980 1600 -980 { lab=Vdd}
N 1600 -1050 1600 -1010 { lab=#net3}
N 1420 -1050 1600 -1050 { lab=#net3}
N 1420 -1050 1420 -1010 { lab=#net3}
N 1510 -1090 1510 -1050 { lab=#net3}
N 1510 -1230 1510 -1150 { lab=Vdd}
N 1900 -1100 1900 -900 { lab=Vout}
N 1680 -710 1900 -710 { lab=Gnd}
N 1900 -710 1980 -710 { lab=Gnd}
N 1900 -900 1900 -890 { lab=Vout}
N 1900 -830 1900 -710 { lab=Gnd}
N 1900 -860 1980 -860 { lab=Gnd}
N 1980 -860 1980 -710 { lab=Gnd}
N 1600 -930 1760 -930 { lab=#net1}
N 1760 -930 1760 -860 { lab=#net1}
N 1760 -860 1860 -860 { lab=#net1}
N 1900 -1230 1900 -1160 { lab=Vdd}
N 1510 -1230 1900 -1230 { lab=Vdd}
N 1900 -1130 1980 -1130 { lab=Vdd}
N 1980 -1230 1980 -1130 { lab=Vdd}
N 1900 -1230 1980 -1230 { lab=Vdd}
N 1570 -1230 1570 -980 { lab=Vdd}
N 1860 -930 1900 -930 { lab=Vout}
N 1760 -930 1800 -930 { lab=#net1}
N 1510 -1120 1570 -1120 { lab=Vdd}
N 1800 -1130 1860 -1130 { lab=#net4}
N 1800 -1130 1800 -1070 { lab=#net4}
N 1900 -1000 1980 -1000 { lab=Vout}
N 1340 -1120 1470 -1120 { lab=#net4}
N 1420 -1070 1800 -1070 { lab=#net4}
N 1420 -1120 1420 -1070 { lab=#net4}
N 1070 -1130 1170 -1130 { lab=#net4}
N 1210 -1230 1210 -1160 { lab=Vdd}
N 950 -1230 1210 -1230 { lab=Vdd}
N 1030 -1230 1030 -1160 { lab=Vdd}
N 1000 -1130 1030 -1130 { lab=Vdd}
N 1000 -1230 1000 -1130 { lab=Vdd}
N 1210 -1130 1240 -1130 { lab=Vdd}
N 1240 -1230 1240 -1130 { lab=Vdd}
N 1210 -1230 1240 -1230 { lab=Vdd}
N 1240 -1230 1510 -1230 { lab=Vdd}
N 1140 -1130 1140 -1080 { lab=#net4}
N 1140 -1080 1210 -1080 { lab=#net4}
N 1210 -1100 1210 -1080 { lab=#net4}
N 1340 -1120 1340 -1080 { lab=#net4}
N 1210 -1080 1340 -1080 { lab=#net4}
N 1070 -1010 1170 -1010 { lab=#net5}
N 1090 -1060 1090 -1010 { lab=#net5}
N 1030 -1060 1090 -1060 { lab=#net5}
N 950 -1010 1030 -1010 { lab=Gnd}
N 1210 -1010 1290 -1010 { lab=Gnd}
N 1340 -980 1380 -980 { lab=Vn}
N 1640 -980 1680 -980 { lab=Vp}
N 1210 -1080 1210 -1040 { lab=#net4}
N 1030 -1100 1030 -1040 { lab=#net5}
N 950 -710 1340 -710 { lab=Gnd}
N 950 -1010 950 -710 { lab=Gnd}
N 1030 -980 1030 -710 { lab=Gnd}
N 1290 -1010 1290 -710 { lab=Gnd}
N 1210 -980 1210 -870 { lab=#net6}
N 1210 -810 1210 -710 { lab=Gnd}
N 1170 -840 1190 -840 { lab=Gnd}
N 1170 -840 1170 -710 { lab=Gnd}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1490 -1120 0 0 {name=M5
L=1
W=10
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1880 -1130 0 0 {name=M7
L=1
W=54
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1620 -980 0 1 {name=M2
L=1
W=30
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1400 -980 0 0 {name=M1
L=1
W=30
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1880 -860 0 0 {name=M8
L=0.5
W=75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1580 -800 0 0 {name=M4
L=0.5
W=7.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1440 -800 0 1 {name=M3
L=0.5
W=7.5
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
C {devices/ipin.sym} 950 -1230 0 0 {name=p4 lab=Vdd}
C {devices/ipin.sym} 950 -710 0 0 {name=p5 lab=Gnd}
C {devices/ipin.sym} 1340 -980 0 0 {name=p1 lab=Vn}
C {devices/ipin.sym} 1680 -980 0 1 {name=p2 lab=Vp}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1830 -930 3 0 {name=C1 model=cap_mim_m3_2 W=2 L=1 MF=1 spiceprefix=X}
C {devices/opin.sym} 1980 -1000 0 0 {name=p6 lab=Vout}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1050 -1130 0 1 {name=M6
L=2
W=30
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1190 -1130 0 0 {name=M9
L=2
W=30
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1190 -1010 0 0 {name=M10
L=5
W=15
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1050 -1010 0 1 {name=M11
L=5
W=5
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
C {sky130_fd_pr/res_xhigh_po.sym} 1210 -840 0 0 {name=R1
W=1
L=3.7
model=res_xhigh_po
spiceprefix=X
mult=1}
