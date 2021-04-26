v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1730 -1030 -1730 -910 { lab=#net1}
N -1910 -1030 -1910 -910 { lab=#net2}
N -1870 -880 -1770 -880 { lab=#net2}
N -1730 -850 -1730 -790 { lab=Gnd}
N -1910 -790 -1730 -790 { lab=Gnd}
N -1910 -850 -1910 -790 { lab=Gnd}
N -1850 -930 -1850 -880 { lab=#net2}
N -1910 -930 -1850 -930 { lab=#net2}
N -1990 -880 -1910 -880 { lab=Gnd}
N -1990 -880 -1990 -790 { lab=Gnd}
N -1990 -790 -1910 -790 { lab=Gnd}
N -1730 -880 -1650 -880 { lab=Gnd}
N -1650 -880 -1650 -790 { lab=Gnd}
N -1730 -790 -1650 -790 { lab=Gnd}
N -1910 -1060 -1730 -1060 { lab=Vdd}
N -1730 -1130 -1730 -1090 { lab=#net3}
N -1910 -1130 -1730 -1130 { lab=#net3}
N -1910 -1130 -1910 -1090 { lab=#net3}
N -1820 -1170 -1820 -1130 { lab=#net3}
N -1820 -1310 -1820 -1230 { lab=Vdd}
N -2200 -1200 -1860 -1200 { lab=Vhigh}
N -2240 -1170 -2240 -1050 { lab=Ibias}
N -2240 -1310 -2240 -1230 { lab=Vdd}
N -2240 -1310 -1820 -1310 { lab=Vdd}
N -2330 -1200 -2240 -1200 { lab=Vdd}
N -2330 -1310 -2330 -1200 { lab=Vdd}
N -2330 -1310 -2240 -1310 { lab=Vdd}
N -1690 -1060 -1630 -1060 { lab=Vn}
N -2010 -1060 -1950 -1060 { lab=Vp}
N -1430 -1180 -1430 -980 { lab=Vhigh}
N -1650 -790 -1430 -790 { lab=Gnd}
N -1430 -790 -1350 -790 { lab=Gnd}
N -1430 -980 -1430 -970 { lab=Vhigh}
N -1430 -910 -1430 -790 { lab=Gnd}
N -1430 -940 -1350 -940 { lab=Gnd}
N -1350 -940 -1350 -790 { lab=Gnd}
N -1730 -1010 -1570 -1010 { lab=#net1}
N -1570 -1010 -1570 -940 { lab=#net1}
N -1570 -940 -1470 -940 { lab=#net1}
N -1950 -1150 -1650 -1150 { lab=Vhigh}
N -1950 -1200 -1950 -1150 { lab=Vhigh}
N -1430 -1310 -1430 -1240 { lab=Vdd}
N -1820 -1310 -1430 -1310 { lab=Vdd}
N -1430 -1210 -1350 -1210 { lab=Vdd}
N -1350 -1310 -1350 -1210 { lab=Vdd}
N -1430 -1310 -1350 -1310 { lab=Vdd}
N -1760 -1310 -1760 -1060 { lab=Vdd}
N -1470 -1010 -1430 -1010 { lab=Vhigh}
N -1570 -1010 -1530 -1010 { lab=#net1}
N -1820 -1200 -1760 -1200 { lab=Vdd}
N -2400 -1310 -2330 -1310 { lab=Vdd}
N -2070 -790 -1990 -790 { lab=Gnd}
N -1520 -1210 -1470 -1210 { lab=Vhigh}
N -1520 -1210 -1520 -1150 { lab=Vhigh}
N -1650 -1150 -1520 -1150 { lab=Vhigh}
N -2240 -790 -2070 -790 { lab=Gnd}
N -2160 -1200 -2160 -1120 { lab=Vhigh}
N -2270 -1050 -2240 -1050 { lab=Ibias}
N -2160 -1120 -2160 -1000 { lab=Vhigh}
N -2280 -1000 -2160 -1000 { lab=Vhigh}
N -1520 -1150 -1430 -1150 { lab=Vhigh}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -2220 -1200 0 1 {name=M6
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -1840 -1200 0 0 {name=M5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -1450 -1210 0 0 {name=M7
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -1710 -1060 0 1 {name=M2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -1930 -1060 0 0 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1450 -940 0 0 {name=M8
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1750 -880 0 0 {name=M4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -1890 -880 0 1 {name=M3
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
C {devices/opin.sym} -2270 -1050 0 1 {name=p3 lab=Ibias}
C {devices/ipin.sym} -2280 -1000 0 0 {name=p6 lab=Vhigh}
C {devices/ipin.sym} -2400 -1310 0 0 {name=p4 lab=Vdd}
C {devices/ipin.sym} -2240 -790 0 0 {name=p5 lab=Gnd}
C {devices/ipin.sym} -1630 -1060 0 1 {name=p1 lab=Vn}
C {devices/ipin.sym} -2010 -1060 0 0 {name=p2 lab=Vp}
C {sky130_fd_pr/cap_mim_m3_2.sym} -1500 -1010 3 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
