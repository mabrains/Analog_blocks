v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2040 -1020 2040 -900 { lab=#net1}
N 1860 -1020 1860 -900 { lab=#net2}
N 1900 -870 2000 -870 { lab=#net2}
N 2040 -840 2040 -780 { lab=GND}
N 1860 -780 2040 -780 { lab=GND}
N 1860 -840 1860 -780 { lab=GND}
N 1920 -920 1920 -870 { lab=#net2}
N 1860 -920 1920 -920 { lab=#net2}
N 1780 -870 1860 -870 { lab=GND}
N 1780 -870 1780 -780 { lab=GND}
N 1780 -780 1860 -780 { lab=GND}
N 2040 -870 2120 -870 { lab=GND}
N 2120 -870 2120 -780 { lab=GND}
N 2040 -780 2120 -780 { lab=GND}
N 1860 -1050 2040 -1050 { lab=Vdd}
N 2040 -1120 2040 -1080 { lab=#net3}
N 1860 -1120 2040 -1120 { lab=#net3}
N 1860 -1120 1860 -1080 { lab=#net3}
N 1860 -1300 1950 -1300 { lab=Vdd}
N 2080 -1050 2140 -1050 { lab=Vp}
N 1760 -1050 1820 -1050 { lab=Vn}
N 2120 -780 2340 -780 { lab=GND}
N 2340 -780 2420 -780 { lab=GND}
N 2340 -1300 2340 -1230 { lab=Vdd}
N 1950 -1300 2340 -1300 { lab=Vdd}
N 2340 -1200 2420 -1200 { lab=Vdd}
N 2420 -1300 2420 -1200 { lab=Vdd}
N 2340 -1300 2420 -1300 { lab=Vdd}
N 1790 -1300 1860 -1300 { lab=Vdd}
N 2250 -1200 2300 -1200 { lab=Vout}
N 1990 -1200 2250 -1200 { lab=Vout}
N 2260 -1200 2260 -1120 { lab=Vout}
N 2260 -1120 2340 -1120 { lab=Vout}
N 2040 -960 2300 -960 { lab=#net1}
N 2340 -930 2340 -780 { lab=GND}
N 2340 -960 2420 -960 { lab=GND}
N 2420 -960 2420 -780 { lab=GND}
N 2340 -1170 2340 -990 { lab=Vout}
N 1950 -1170 1950 -1120 { lab=#net3}
N 1760 -780 1780 -780 { lab=GND}
N 1950 -1300 1950 -1230 { lab=Vdd}
N 1840 -1200 1950 -1200 { lab=Vdd}
N 1840 -1300 1840 -1200 { lab=Vdd}
N 1870 -1200 1870 -1050 { lab=Vdd}
N 2340 -1060 2420 -1060 { lab=Vout}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1970 -1200 0 1 {name=M5
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1840 -1050 0 0 {name=M1
L=0.5
W=10
nf=1
mult=9
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2320 -960 0 0 {name=M8
L=0.5
W=4.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2020 -870 0 0 {name=M4
L=0.5
W=1
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
W=1
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
C {devices/ipin.sym} 1790 -1300 0 0 {name=p4 lab=Vdd}
C {devices/ipin.sym} 1760 -780 0 0 {name=p5 lab=Gnd}
C {devices/ipin.sym} 2140 -1050 0 1 {name=p2 lab=Vp}
C {devices/ipin.sym} 1760 -1050 0 0 {name=p1 lab=Vn}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2060 -1050 0 1 {name=M2
L=0.5
W=10
nf=1
mult=9
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
L=0.5
W=44
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
C {devices/opin.sym} 2420 -1060 0 0 {name=p3 lab=Vout}
