v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2110 -1010 2110 -890 { lab=#net1}
N 1930 -1010 1930 -890 { lab=#net2}
N 1970 -860 2070 -860 { lab=#net2}
N 2110 -830 2110 -770 { lab=Gnd}
N 1930 -770 2110 -770 { lab=Gnd}
N 1930 -830 1930 -770 { lab=Gnd}
N 1990 -910 1990 -860 { lab=#net2}
N 1930 -910 1990 -910 { lab=#net2}
N 1850 -860 1930 -860 { lab=Gnd}
N 1850 -860 1850 -770 { lab=Gnd}
N 1850 -770 1930 -770 { lab=Gnd}
N 2110 -860 2190 -860 { lab=Gnd}
N 2190 -860 2190 -770 { lab=Gnd}
N 2110 -770 2190 -770 { lab=Gnd}
N 1930 -1040 2110 -1040 { lab=Vdd}
N 2110 -1110 2110 -1070 { lab=#net3}
N 1930 -1110 2110 -1110 { lab=#net3}
N 1930 -1110 1930 -1070 { lab=#net3}
N 2020 -1150 2020 -1110 { lab=#net3}
N 2020 -1290 2020 -1210 { lab=Vdd}
N 1640 -1180 1980 -1180 { lab=Vhigh}
N 1600 -1150 1600 -1030 { lab=Ibias}
N 1600 -1290 1600 -1210 { lab=Vdd}
N 1600 -1290 2020 -1290 { lab=Vdd}
N 1510 -1180 1600 -1180 { lab=Vdd}
N 1510 -1290 1510 -1180 { lab=Vdd}
N 1510 -1290 1600 -1290 { lab=Vdd}
N 2150 -1040 2210 -1040 { lab=Vp}
N 1830 -1040 1890 -1040 { lab=Vn}
N 2410 -1160 2410 -960 { lab=Vhigh}
N 2190 -770 2410 -770 { lab=Gnd}
N 2410 -770 2490 -770 { lab=Gnd}
N 2410 -960 2410 -950 { lab=Vhigh}
N 2410 -890 2410 -770 { lab=Gnd}
N 2410 -920 2490 -920 { lab=Gnd}
N 2490 -920 2490 -770 { lab=Gnd}
N 2110 -990 2270 -990 { lab=#net1}
N 2270 -990 2270 -920 { lab=#net1}
N 2270 -920 2370 -920 { lab=#net1}
N 1890 -1130 2190 -1130 { lab=Vhigh}
N 1890 -1180 1890 -1130 { lab=Vhigh}
N 2410 -1290 2410 -1220 { lab=Vdd}
N 2020 -1290 2410 -1290 { lab=Vdd}
N 2410 -1190 2490 -1190 { lab=Vdd}
N 2490 -1290 2490 -1190 { lab=Vdd}
N 2410 -1290 2490 -1290 { lab=Vdd}
N 2080 -1290 2080 -1040 { lab=Vdd}
N 2370 -990 2410 -990 { lab=Vhigh}
N 2270 -990 2310 -990 { lab=#net1}
N 2020 -1180 2080 -1180 { lab=Vdd}
N 1550 -1030 1600 -1030 { lab=Ibias}
N 1440 -1290 1510 -1290 { lab=Vdd}
N 1770 -770 1850 -770 { lab=Gnd}
N 2320 -1190 2370 -1190 { lab=Vhigh}
N 2320 -1190 2320 -1130 { lab=Vhigh}
N 2190 -1130 2320 -1130 { lab=Vhigh}
N 2320 -1130 2410 -1130 { lab=Vhigh}
N 1700 -1180 1700 -980 { lab=Vhigh}
N 1540 -980 1700 -980 { lab=Vhigh}
C {devices/ipin.sym} 2210 -1040 0 1 {name=p1 lab=Vp}
C {devices/ipin.sym} 1830 -1040 0 0 {name=p2 lab=Vn}
C {devices/opin.sym} 1550 -1030 0 1 {name=p3 lab=Ibias}
C {devices/ipin.sym} 1440 -1290 0 0 {name=p4 lab=Vdd}
C {devices/ipin.sym} 1770 -770 0 0 {name=p5 lab=Gnd}
C {devices/ipin.sym} 1540 -980 0 0 {name=p6 lab=Vhigh}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1620 -1180 0 1 {name=M6
L=0.5
W=5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2000 -1180 0 0 {name=M5
L=0.5
W=5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2390 -1190 0 0 {name=M7
L=0.5
W=27
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
C {sky130_fd_pr/cap_mim_m3_2.sym} 2340 -990 1 1 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2130 -1040 0 1 {name=M2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1910 -1040 0 0 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2390 -920 0 0 {name=M8
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2090 -860 0 0 {name=M4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1950 -860 0 1 {name=M3
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
