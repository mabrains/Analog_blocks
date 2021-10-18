v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 210 -1670 240 -1670 { lab=Vdd}
N 470 -1550 470 -1470 { lab=#net1}
N 650 -1550 650 -1470 { lab=#net2}
N 510 -1580 610 -1580 { lab=#net1}
N 530 -1580 530 -1530 { lab=#net1}
N 470 -1530 530 -1530 { lab=#net1}
N 650 -1670 650 -1610 { lab=Vdd}
N 470 -1670 650 -1670 { lab=Vdd}
N 470 -1670 470 -1610 { lab=Vdd}
N 370 -1580 470 -1580 { lab=Vdd}
N 370 -1670 370 -1580 { lab=Vdd}
N 370 -1670 470 -1670 { lab=Vdd}
N 650 -1580 750 -1580 { lab=Vdd}
N 750 -1670 750 -1580 { lab=Vdd}
N 650 -1670 750 -1670 { lab=Vdd}
N 470 -1440 650 -1440 { lab=GND}
N 650 -1410 650 -1350 { lab=#net3}
N 470 -1350 650 -1350 { lab=#net3}
N 470 -1410 470 -1350 { lab=#net3}
N 550 -1350 550 -1300 { lab=#net3}
N 550 -1240 550 -1190 { lab=GND}
N 650 -1510 950 -1510 { lab=#net2}
N 990 -1480 990 -1300 { lab=Vout}
N 990 -1240 990 -1190 { lab=GND}
N 990 -1270 1070 -1270 { lab=GND}
N 1070 -1270 1070 -1190 { lab=GND}
N 550 -1270 630 -1270 { lab=GND}
N 630 -1270 630 -1190 { lab=GND}
N 990 -1670 990 -1540 { lab=Vdd}
N 750 -1670 990 -1670 { lab=Vdd}
N 990 -1510 1070 -1510 { lab=Vdd}
N 1070 -1670 1070 -1510 { lab=Vdd}
N 990 -1670 1070 -1670 { lab=Vdd}
N 480 -1440 480 -1190 { lab=GND}
N 680 -1270 950 -1270 { lab=Ibias}
N 680 -1270 680 -1230 { lab=Ibias}
N 500 -1230 680 -1230 { lab=Ibias}
N 370 -1440 430 -1440 { lab=Vn}
N 1070 -1190 1070 -1150 { lab=GND}
N 990 -1190 990 -1150 { lab=GND}
N 630 -1190 630 -1150 { lab=GND}
N 550 -1190 550 -1150 { lab=GND}
N 480 -1190 480 -1150 { lab=GND}
N 160 -1150 1070 -1150 { lab=GND}
N 500 -1270 500 -1230 { lab=Ibias}
N 500 -1270 510 -1270 { lab=Ibias}
N 240 -1670 370 -1670 { lab=Vdd}
N 690 -1440 750 -1440 { lab=Vp}
N 990 -1430 1090 -1430 { lab=Vout}
N 360 -1270 500 -1270 { lab=Ibias}
N 200 -1240 200 -1150 { lab=GND}
N 240 -1270 360 -1270 { lab=Ibias}
N 200 -1360 200 -1300 { lab=Ibias}
N 180 -1360 200 -1360 { lab=Ibias}
N 280 -1320 280 -1270 { lab=Ibias}
N 200 -1320 280 -1320 { lab=Ibias}
N 170 -1270 170 -1150 { lab=GND}
N 170 -1270 200 -1270 { lab=GND}
N 840 -1430 870 -1430 { lab=#net2}
N 840 -1510 840 -1430 { lab=#net2}
N 930 -1430 990 -1430 { lab=Vout}
C {devices/opin.sym} 1090 -1430 0 0 {name=p3 lab=Vout}
C {devices/ipin.sym} 210 -1670 0 0 {name=p4 lab=Vdd}
C {devices/ipin.sym} 160 -1150 0 0 {name=p5 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 450 -1440 0 0 {name=M2
L=0.5
W=5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 670 -1440 0 1 {name=M3
L=0.5
W=5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 490 -1580 0 1 {name=M4
L=0.5
W=3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 630 -1580 0 0 {name=M5
L=0.5
W=3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 970 -1510 0 0 {name=M6
L=0.5
W=3
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 530 -1270 0 0 {name=M7
L=0.5
W=0.75
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 970 -1270 0 0 {name=M9
L=0.5
W=0.75
nf=1
mult=64
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} 750 -1440 0 1 {name=p2 lab=Vp}
C {devices/ipin.sym} 370 -1440 0 0 {name=p1 lab=Vn}
C {devices/ipin.sym} 180 -1360 0 0 {name=p6 lab=Ibias}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 220 -1270 0 1 {name=M1
L=0.5
W=0.75
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
C {sky130_fd_pr/cap_mim_m3_2.sym} 900 -1430 3 1 {name=C1 model=cap_mim_m3_2 W=20 L=25 MF=1 spiceprefix=X}
