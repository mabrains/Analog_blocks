v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1070 -1610 1100 -1610 { lab=Vdd}
N 900 -1090 1020 -1090 { lab=GND}
N 1520 -1310 1520 -1250 { lab=#net1}
N 1320 -1250 1520 -1250 { lab=#net1}
N 1320 -1310 1320 -1250 { lab=#net1}
N 1520 -1500 1520 -1370 { lab=Vout}
N 1320 -1500 1320 -1370 { lab=#net2}
N 1360 -1530 1480 -1530 { lab=#net2}
N 1520 -1610 1520 -1560 { lab=Vdd}
N 1320 -1610 1520 -1610 { lab=Vdd}
N 1320 -1610 1320 -1560 { lab=Vdd}
N 1400 -1530 1400 -1470 { lab=#net2}
N 1320 -1470 1400 -1470 { lab=#net2}
N 1420 -1250 1420 -1200 { lab=#net1}
N 1420 -1140 1420 -1090 { lab=GND}
N 1100 -1610 1320 -1610 { lab=Vdd}
N 1230 -1340 1280 -1340 { lab=Vp}
N 1560 -1340 1630 -1340 { lab=Vn}
N 1520 -1530 1600 -1530 { lab=Vdd}
N 1600 -1610 1600 -1530 { lab=Vdd}
N 1520 -1610 1600 -1610 { lab=Vdd}
N 1240 -1530 1320 -1530 { lab=Vdd}
N 1240 -1610 1240 -1530 { lab=Vdd}
N 1440 -1340 1520 -1340 { lab=GND}
N 1320 -1340 1440 -1340 { lab=GND}
N 1520 -1430 1770 -1430 { lab=Vout}
N 1330 -1340 1330 -1090 { lab=GND}
N 1420 -1170 1500 -1170 { lab=GND}
N 1500 -1170 1500 -1090 { lab=GND}
N 1420 -1090 1500 -1090 { lab=GND}
N 1020 -1090 1420 -1090 { lab=GND}
N 1360 -1170 1380 -1170 { lab=#net3}
N 1150 -1170 1360 -1170 { lab=#net3}
N 1110 -1140 1110 -1090 { lab=GND}
N 1110 -1370 1110 -1200 { lab=#net3}
N 1110 -1610 1110 -1430 { lab=Vdd}
N 1040 -1170 1110 -1170 { lab=GND}
N 1040 -1170 1040 -1090 { lab=GND}
N 1110 -1240 1180 -1240 { lab=#net3}
N 1180 -1240 1180 -1170 { lab=#net3}
C {devices/opin.sym} 1770 -1430 0 0 {name=p3 lab=Vout}
C {devices/ipin.sym} 1070 -1610 0 0 {name=p4 lab=Vdd}
C {devices/ipin.sym} 900 -1090 0 0 {name=p5 lab=GND}
C {devices/ipin.sym} 1630 -1340 0 1 {name=p1 lab=Vn}
C {devices/ipin.sym} 1230 -1340 0 0 {name=p2 lab=Vp}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1340 -1530 0 1 {name=M3
L=1
W=68
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1500 -1530 0 0 {name=M4
L=1
W=68
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1300 -1340 0 0 {name=M1
L=0.5
W=12
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1540 -1340 0 1 {name=M2
L=0.5
W=12
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1400 -1170 0 0 {name=M5
L=1
W=9
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1130 -1170 0 1 {name=M6
L=1
W=9
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
C {devices/isource.sym} 1110 -1400 0 0 {name=I0 value=100u}
