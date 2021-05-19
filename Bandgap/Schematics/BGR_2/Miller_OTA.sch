v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1640 -1060 1640 -980 { lab=#net1}
N 1820 -1060 1820 -980 { lab=#net2}
N 1680 -1090 1780 -1090 { lab=#net1}
N 1700 -1090 1700 -1040 { lab=#net1}
N 1640 -1040 1700 -1040 { lab=#net1}
N 1820 -1180 1820 -1120 { lab=VDD}
N 1640 -1180 1820 -1180 { lab=VDD}
N 1640 -1180 1640 -1120 { lab=VDD}
N 1540 -1090 1640 -1090 { lab=VDD}
N 1540 -1180 1540 -1090 { lab=VDD}
N 1540 -1180 1640 -1180 { lab=VDD}
N 1820 -1090 1920 -1090 { lab=VDD}
N 1920 -1180 1920 -1090 { lab=VDD}
N 1820 -1180 1920 -1180 { lab=VDD}
N 1640 -950 1820 -950 { lab=GND}
N 1820 -920 1820 -860 { lab=#net3}
N 1640 -860 1820 -860 { lab=#net3}
N 1640 -920 1640 -860 { lab=#net3}
N 1860 -950 1920 -950 { lab=Vp}
N 1720 -860 1720 -810 { lab=#net3}
N 1720 -750 1720 -700 { lab=GND}
N 1820 -1020 2120 -1020 { lab=#net2}
N 2160 -990 2160 -810 { lab=Vout}
N 2160 -750 2160 -700 { lab=GND}
N 1720 -700 2160 -700 { lab=GND}
N 2160 -780 2240 -780 { lab=GND}
N 2240 -780 2240 -700 { lab=GND}
N 2160 -700 2240 -700 { lab=GND}
N 2160 -1180 2160 -1050 { lab=VDD}
N 1920 -1180 2160 -1180 { lab=VDD}
N 2160 -1020 2240 -1020 { lab=VDD}
N 2240 -1180 2240 -1020 { lab=VDD}
N 2160 -1180 2240 -1180 { lab=VDD}
N 1640 -700 1720 -700 { lab=GND}
N 2020 -940 2040 -940 { lab=#net2}
N 2020 -1020 2020 -940 { lab=#net2}
N 2100 -940 2160 -940 { lab=Vout}
N 1260 -1180 1540 -1180 { lab=VDD}
N 1650 -950 1650 -700 { lab=GND}
N 2160 -940 2280 -940 { lab=Vout}
N 1540 -950 1600 -950 { lab=Vn}
N 1650 -780 1720 -780 { lab=GND}
N 1760 -780 2120 -780 { lab=Vout}
N 2100 -840 2100 -780 { lab=Vout}
N 2100 -840 2160 -840 { lab=Vout}
N 2010 -1090 2040 -1090 {}
N 2040 -1090 2040 -1020 {}
C {devices/capa.sym} 2070 -940 1 1 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1620 -950 0 0 {name=M1
L=0.5
W=10
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1840 -950 0 1 {name=M2
L=0.5
W=10
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1660 -1090 0 1 {name=M3
L=0.5
W=95.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1800 -1090 0 0 {name=M4
L=0.5
W=95.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2140 -1020 0 0 {name=M6
L=0.5
W=95.5
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1740 -780 0 1 {name=M5
L=1
W=24
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2140 -780 0 0 {name=M7
L=1
W=24
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} 1260 -1180 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 2010 -1090 0 0 {name=p2 lab=Ibias}
C {devices/ipin.sym} 1540 -950 0 0 {name=p3 lab=Vn}
C {devices/ipin.sym} 1920 -950 0 1 {name=p4 lab=Vp}
C {devices/opin.sym} 2280 -940 0 0 {name=p5 lab=Vout}
C {devices/ipin.sym} 1640 -700 0 0 {name=p6 lab=GND}