v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1930 -710 1930 -630 { lab=#net1}
N 2110 -710 2110 -630 { lab=#net2}
N 1970 -740 2070 -740 { lab=#net1}
N 1990 -740 1990 -690 { lab=#net1}
N 1930 -690 1990 -690 { lab=#net1}
N 2110 -830 2110 -770 { lab=VDD}
N 1930 -830 2110 -830 { lab=VDD}
N 1930 -830 1930 -770 { lab=VDD}
N 1830 -740 1930 -740 { lab=VDD}
N 1830 -830 1830 -740 { lab=VDD}
N 1830 -830 1930 -830 { lab=VDD}
N 2110 -740 2210 -740 { lab=VDD}
N 2210 -830 2210 -740 { lab=VDD}
N 2110 -830 2210 -830 { lab=VDD}
N 1930 -600 2110 -600 { lab=GND}
N 2110 -570 2110 -510 { lab=#net3}
N 1930 -510 2110 -510 { lab=#net3}
N 1930 -570 1930 -510 { lab=#net3}
N 2150 -600 2210 -600 { lab=Vp}
N 2010 -510 2010 -460 { lab=#net3}
N 2010 -400 2010 -350 { lab=GND}
N 2110 -670 2410 -670 { lab=#net2}
N 2450 -640 2450 -460 { lab=Vout}
N 2450 -400 2450 -350 { lab=GND}
N 2010 -350 2450 -350 { lab=GND}
N 2450 -430 2530 -430 { lab=GND}
N 2530 -430 2530 -350 { lab=GND}
N 2450 -350 2530 -350 { lab=GND}
N 2010 -430 2090 -430 { lab=GND}
N 2090 -430 2090 -350 { lab=GND}
N 2450 -830 2450 -700 { lab=VDD}
N 2210 -830 2450 -830 { lab=VDD}
N 2450 -670 2530 -670 { lab=VDD}
N 2530 -830 2530 -670 { lab=VDD}
N 2450 -830 2530 -830 { lab=VDD}
N 1730 -400 1730 -350 { lab=GND}
N 1650 -430 1730 -430 { lab=GND}
N 1650 -430 1650 -350 { lab=GND}
N 1650 -350 1730 -350 { lab=GND}
N 2310 -590 2330 -590 { lab=#net2}
N 2310 -670 2310 -590 { lab=#net2}
N 2390 -590 2450 -590 { lab=Vout}
N 1730 -510 1730 -460 { lab=Ibias}
N 1940 -600 1940 -350 { lab=GND}
N 1730 -480 1810 -480 { lab=Ibias}
N 1810 -480 1810 -430 { lab=Ibias}
N 2450 -590 2570 -590 { lab=Vout}
N 2570 -590 2660 -590 { lab=Vout}
N 1830 -600 1890 -600 { lab=Vn}
N 1730 -350 2010 -350 { lab=GND}
N 1770 -430 1970 -430 { lab=Ibias}
N 2140 -430 2410 -430 { lab=Ibias}
N 2140 -430 2140 -380 { lab=Ibias}
N 1900 -380 2140 -380 { lab=Ibias}
N 1900 -430 1900 -380 { lab=Ibias}
N 1730 -830 1830 -830 { lab=VDD}
N 1700 -510 1730 -510 { lab=Ibias}
C {devices/capa.sym} 2360 -590 1 1 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1910 -600 0 0 {name=M1
L=0.5
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 2130 -600 0 1 {name=M2
L=0.5
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1990 -430 0 0 {name=M5
L=1
W=12
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1750 -430 0 1 {name=M8
L=1
W=12
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 2430 -430 0 0 {name=M7
L=1
W=75
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 2090 -740 0 0 {name=M4
L=0.5
W=7.2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1950 -740 0 1 {name=M3
L=0.5
W=7.2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 2430 -670 0 0 {name=M6
L=0.5
W=87.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} 1700 -510 0 0 {name=p1 lab=Ibias}
C {devices/ipin.sym} 1830 -600 0 0 {name=p2 lab=Vn}
C {devices/ipin.sym} 2210 -600 0 1 {name=p3 lab=Vp}
C {devices/ipin.sym} 1730 -830 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 1650 -350 0 0 {name=p5 lab=GND}
C {devices/opin.sym} 2660 -590 0 0 {name=p6 lab=Vout}
