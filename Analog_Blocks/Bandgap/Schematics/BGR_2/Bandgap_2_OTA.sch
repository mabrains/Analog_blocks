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
N 1680 -710 1900 -710 { lab=Gnd}
N 1900 -710 1980 -710 { lab=Gnd}
N 1900 -830 1900 -710 { lab=Gnd}
N 1900 -860 1980 -860 { lab=Gnd}
N 1980 -860 1980 -710 { lab=Gnd}
N 1510 -1230 1900 -1230 { lab=Vdd}
N 1900 -1000 1980 -1000 { lab=Vout}
N 1340 -980 1380 -980 { lab=Vn}
N 1640 -980 1680 -980 { lab=Vp}
N 1310 -710 1340 -710 { lab=Gnd}
N 1310 -1230 1510 -1230 { lab=Vdd}
N 1510 -1090 1510 -1050 { lab=#net3}
N 1510 -1230 1510 -1150 { lab=Vdd}
N 1550 -1120 1860 -1120 { lab=Vout}
N 1900 -1230 1900 -1150 { lab=Vdd}
N 1900 -1090 1900 -890 { lab=Vout}
N 1820 -1120 1820 -1060 { lab=Vout}
N 1820 -1060 1900 -1060 { lab=Vout}
N 1600 -860 1860 -860 { lab=#net1}
N 1400 -1120 1510 -1120 { lab=Vdd}
N 1400 -1230 1400 -1120 { lab=Vdd}
N 1440 -1120 1440 -980 { lab=Vdd}
N 1900 -1120 2000 -1120 { lab=Vdd}
N 2000 -1230 2000 -1120 { lab=Vdd}
N 1900 -1230 2000 -1230 { lab=Vdd}
N 1840 -920 1900 -920 { lab=Vout}
N 1740 -920 1780 -920 { lab=#net1}
N 1740 -920 1740 -860 { lab=#net1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1530 -1120 0 1 {name=M5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1880 -1120 0 0 {name=M7
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
C {devices/ipin.sym} 1310 -1230 0 0 {name=p4 lab=Vdd}
C {devices/ipin.sym} 1310 -710 0 0 {name=p5 lab=Gnd}
C {devices/ipin.sym} 1340 -980 0 0 {name=p1 lab=Vn}
C {devices/ipin.sym} 1680 -980 0 1 {name=p2 lab=Vp}
C {devices/opin.sym} 1980 -1000 0 0 {name=p6 lab=Vout}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1810 -920 3 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
