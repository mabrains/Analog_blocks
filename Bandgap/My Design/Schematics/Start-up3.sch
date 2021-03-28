v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1330 -1610 1390 -1610 { lab=vref}
N 1330 -1610 1330 -1420 { lab=vref}
N 1330 -1420 1390 -1420 { lab=vref}
N 1430 -1580 1430 -1450 { lab=#net1}
N 1430 -1610 1450 -1610 { lab=vdd}
N 1450 -1680 1450 -1610 { lab=vdd}
N 1430 -1680 1450 -1680 { lab=vdd}
N 1430 -1680 1430 -1640 { lab=vdd}
N 1430 -1420 1450 -1420 { lab=gnd}
N 1450 -1420 1450 -1360 { lab=gnd}
N 1430 -1360 1450 -1360 { lab=gnd}
N 1430 -1390 1430 -1360 { lab=gnd}
N 1430 -1360 1430 -1300 { lab=gnd}
N 1430 -1300 1430 -1290 { lab=gnd}
N 1580 -1640 1580 -1550 { lab=vplus}
N 1580 -1520 1600 -1520 { lab=gnd}
N 1600 -1520 1600 -1290 { lab=gnd}
N 1430 -1520 1540 -1520 { lab=#net1}
N 1580 -1490 1580 -1480 { lab=vplus}
N 1580 -1480 1580 -1440 { lab=vplus}
N 1580 -1440 1720 -1440 { lab=vplus}
N 1580 -1640 1720 -1640 { lab=vplus}
N 1430 -1290 1600 -1290 { lab=gnd}
N 1330 -1680 1430 -1680 { lab=vdd}
N 1380 -1290 1430 -1290 { lab=gnd}
N 1260 -1510 1330 -1510 { lab=vref}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1410 -1610 0 0 {name=M9
L=40
W=1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1410 -1420 0 0 {name=M10
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1560 -1520 0 0 {name=M11
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 1330 -1680 0 1 {name=p1 lab=vdd}
C {devices/iopin.sym} 1380 -1290 0 1 {name=p2 lab=gnd}
C {devices/iopin.sym} 1260 -1510 0 1 {name=p3 lab=vref}
C {devices/iopin.sym} 1720 -1440 0 0 {name=p5 lab=vplus}
C {devices/iopin.sym} 1720 -1640 0 0 {name=p4 lab=gcm}
