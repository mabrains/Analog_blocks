v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1670 -990 1810 -990 { lab=#net1}
N 1630 -1090 1630 -1020 { lab=#net1}
N 1850 -1090 1850 -1020 { lab=#net2}
N 1710 -1050 1710 -990 { lab=#net1}
N 1630 -1050 1710 -1050 { lab=#net1}
N 1850 -960 1850 -910 { lab=gnd}
N 1630 -910 1850 -910 { lab=gnd}
N 1630 -960 1630 -910 { lab=gnd}
N 1850 -1120 1850 -1090 { lab=#net2}
N 1630 -1120 1630 -1090 { lab=#net1}
N 1850 -1210 1850 -1180 { lab=#net3}
N 1630 -1210 1850 -1210 { lab=#net3}
N 1630 -1210 1630 -1180 { lab=#net3}
N 1740 -1230 1740 -1210 { lab=#net3}
N 1630 -1150 1680 -1150 { lab=vdd}
N 1680 -1150 1850 -1150 { lab=vdd}
N 1850 -990 1890 -990 { lab=gnd}
N 1560 -990 1630 -990 { lab=gnd}
N 1560 -990 1560 -910 { lab=gnd}
N 1890 -990 1930 -990 { lab=gnd}
N 1930 -990 1930 -920 { lab=gnd}
N 1930 -920 1930 -910 { lab=gnd}
N 1850 -910 1930 -910 { lab=gnd}
N 1850 -1060 2030 -1060 { lab=#net2}
N 2070 -1030 2070 -910 { lab=gnd}
N 1930 -910 2070 -910 { lab=gnd}
N 2150 -1060 2150 -910 { lab=gnd}
N 2070 -1230 2070 -1090 { lab=gcm}
N 2070 -1260 2180 -1260 { lab=vdd}
N 2180 -1340 2180 -1260 { lab=vdd}
N 2070 -1340 2070 -1290 { lab=vdd}
N 1740 -1340 1740 -1290 { lab=vdd}
N 1930 -1150 1930 -1100 { lab=vminus}
N 1890 -1150 1930 -1150 { lab=vminus}
N 1850 -1080 1950 -1080 { lab=#net2}
N 1950 -1120 1950 -1080 { lab=#net2}
N 1950 -1120 1970 -1120 { lab=#net2}
N 2030 -1120 2070 -1120 { lab=gcm}
N 1740 -1260 1810 -1260 { lab=vdd}
N 1810 -1260 1810 -1150 { lab=vdd}
N 1810 -1340 1810 -1260 { lab=vdd}
N 1990 -1260 2040 -1260 { lab=gcm}
N 1990 -1220 2070 -1220 { lab=gcm}
N 1990 -1260 1990 -1220 { lab=gcm}
N 2070 -1060 2150 -1060 { lab=gnd}
N 2070 -910 2150 -910 { lab=gnd}
N 1520 -1340 2180 -1340 { lab=vdd}
N 1410 -1320 1410 -1290 { lab=vdd}
N 1410 -1320 1560 -1320 { lab=vdd}
N 1560 -1340 1560 -1320 { lab=vdd}
N 1640 -1220 1990 -1220 { lab=gcm}
N 1640 -1260 1640 -1220 { lab=gcm}
N 1450 -1260 1700 -1260 { lab=gcm}
N 1360 -1260 1410 -1260 { lab=vdd}
N 1360 -1320 1360 -1260 { lab=vdd}
N 1360 -1320 1410 -1320 { lab=vdd}
N 1410 -1230 1410 -1200 { lab=vplus}
N 1340 -1200 1410 -1200 { lab=vplus}
N 1490 -1260 1490 -1170 { lab=gcm}
N 1340 -1170 1490 -1170 { lab=gcm}
N 1340 -1150 1590 -1150 { lab=vplus}
N 1340 -1100 1930 -1100 { lab=vminus}
N 1340 -910 1630 -910 { lab=gnd}
C {devices/capa.sym} 2000 -1120 3 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1830 -990 0 0 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1650 -990 0 1 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2050 -1060 0 0 {name=M3
L=1
W=10
nf=1
mult=500
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2050 -1260 0 0 {name=M4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1610 -1150 0 0 {name=M5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1720 -1260 0 0 {name=M6
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1870 -1150 0 1 {name=M8
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
C {devices/iopin.sym} 1520 -1340 0 1 {name=p1 lab=vdd}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1430 -1260 0 1 {name=M7
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
C {devices/iopin.sym} 1340 -910 0 1 {name=p2 lab=gnd}
C {devices/iopin.sym} 1340 -1100 0 1 {name=p4 lab=vminus}
C {devices/iopin.sym} 1340 -1150 0 1 {name=p3 lab=vplus}
C {devices/iopin.sym} 1340 -1170 0 1 {name=p5 lab=gcm}
C {devices/iopin.sym} 1340 -1200 0 1 {name=p6 lab=i}
