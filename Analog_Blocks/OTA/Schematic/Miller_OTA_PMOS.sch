v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2040 -1020 2040 -900 { lab=#net1}
N 1860 -1020 1860 -900 { lab=#net2}
N 1900 -870 2000 -870 { lab=#net2}
N 2040 -840 2040 -780 { lab=Gnd}
N 1860 -780 2040 -780 { lab=Gnd}
N 1860 -840 1860 -780 { lab=Gnd}
N 1920 -920 1920 -870 { lab=#net2}
N 1860 -920 1920 -920 { lab=#net2}
N 1780 -870 1860 -870 { lab=Gnd}
N 1780 -870 1780 -780 { lab=Gnd}
N 1780 -780 1860 -780 { lab=Gnd}
N 2040 -870 2120 -870 { lab=Gnd}
N 2120 -870 2120 -780 { lab=Gnd}
N 2040 -780 2120 -780 { lab=Gnd}
N 1860 -1050 2040 -1050 { lab=Vdd}
N 2040 -1120 2040 -1080 { lab=#net3}
N 1860 -1120 2040 -1120 { lab=#net3}
N 1860 -1120 1860 -1080 { lab=#net3}
N 1950 -1160 1950 -1120 { lab=#net3}
N 1950 -1300 1950 -1220 { lab=Vdd}
N 1570 -1190 1910 -1190 { lab=Ibias}
N 1530 -1160 1530 -1040 { lab=Ibias}
N 1530 -1300 1530 -1220 { lab=Vdd}
N 1530 -1300 1950 -1300 { lab=Vdd}
N 1440 -1190 1530 -1190 { lab=Vdd}
N 1440 -1300 1440 -1190 { lab=Vdd}
N 1440 -1300 1530 -1300 { lab=Vdd}
N 2080 -1050 2140 -1050 { lab=Vp}
N 1760 -1050 1820 -1050 { lab=Vn}
N 2340 -1170 2340 -970 { lab=Vout}
N 2120 -780 2340 -780 { lab=Gnd}
N 2340 -780 2420 -780 { lab=Gnd}
N 2340 -970 2340 -960 { lab=Vout}
N 2340 -900 2340 -780 { lab=Gnd}
N 2340 -930 2420 -930 { lab=Gnd}
N 2420 -930 2420 -780 { lab=Gnd}
N 2040 -1000 2200 -1000 { lab=#net1}
N 2200 -1000 2200 -930 { lab=#net1}
N 2200 -930 2300 -930 { lab=#net1}
N 1820 -1140 2120 -1140 { lab=Ibias}
N 1820 -1190 1820 -1140 { lab=Ibias}
N 2340 -1300 2340 -1230 { lab=Vdd}
N 1950 -1300 2340 -1300 { lab=Vdd}
N 2340 -1200 2420 -1200 { lab=Vdd}
N 2420 -1300 2420 -1200 { lab=Vdd}
N 2340 -1300 2420 -1300 { lab=Vdd}
N 2010 -1300 2010 -1050 { lab=Vdd}
N 2300 -1000 2340 -1000 { lab=Vout}
N 2200 -1000 2240 -1000 { lab=#net1}
N 1950 -1190 2010 -1190 { lab=Vdd}
N 1370 -1300 1440 -1300 { lab=Vdd}
N 1700 -780 1780 -780 { lab=Gnd}
N 2250 -1200 2300 -1200 { lab=Ibias}
N 2250 -1200 2250 -1140 { lab=Ibias}
N 2120 -1140 2250 -1140 { lab=Ibias}
N 1530 -780 1700 -780 { lab=Gnd}
N 1500 -1040 1530 -1040 { lab=Ibias}
N 1530 -1120 1600 -1120 { lab=Ibias}
N 1600 -1190 1600 -1120 { lab=Ibias}
N 2340 -1070 2390 -1070 { lab=Vout}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1550 -1190 0 1 {name=M6
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1930 -1190 0 0 {name=M5
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2320 -1200 0 0 {name=M7
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2060 -1050 0 1 {name=M2
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1840 -1050 0 0 {name=M1
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2320 -930 0 0 {name=M8
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2020 -870 0 0 {name=M4
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1880 -870 0 1 {name=M3
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/opin.sym} 2390 -1070 0 0 {name=p3 lab=Vout}
C {devices/ipin.sym} 1500 -1040 0 0 {name=p6 lab=Ibias}
C {devices/ipin.sym} 1370 -1300 0 0 {name=p4 lab=Vdd}
C {devices/ipin.sym} 1530 -780 0 0 {name=p5 lab=Gnd}
C {devices/ipin.sym} 2140 -1050 0 1 {name=p2 lab=Vp}
C {sky130_fd_pr/cap_mim_m3_2.sym} 2270 -1000 3 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {devices/ipin.sym} 1760 -1050 0 0 {name=p1 lab=Vn}
