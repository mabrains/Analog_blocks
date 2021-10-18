v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 940 -630 940 -570 { lab=Vout}
N 940 -510 940 -450 { lab=#net1}
N 940 -600 1080 -600 { lab=Vout}
N 940 -450 940 -410 { lab=#net1}
N 940 -350 940 -320 { lab=GND}
N 940 -660 1000 -660 { lab=Vin}
N 940 -840 940 -690 { lab=Vin}
N 1000 -840 1000 -660 { lab=Vin}
N 940 -840 1000 -840 { lab=Vin}
N 690 -840 940 -840 { lab=Vin}
N 390 -320 940 -320 { lab=GND}
N 190 -840 690 -840 { lab=Vin}
N 200 -320 390 -320 { lab=GND}
N 280 -840 280 -780 { lab=Vin}
N 280 -720 280 -660 { lab=#net2}
N 400 -460 940 -460 { lab=#net1}
N 280 -660 460 -660 { lab=#net2}
N 380 -720 460 -720 { lab=Vref}
N 820 -660 900 -660 { lab=#net3}
N 400 -600 400 -460 { lab=#net1}
N 400 -600 460 -600 { lab=#net1}
N 620 -550 620 -320 { lab=GND}
N 620 -840 620 -770 { lab=Vin}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 920 -660 0 0 {name=M1
L=0.5
W=20
nf=1
mult=1400
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} 190 -840 0 0 {name=p1 lab=Vin}
C {devices/ipin.sym} 200 -320 0 0 {name=p2 lab=GND}
C {devices/opin.sym} 1080 -600 0 0 {name=p3 lab=Vout}
C {devices/res.sym} 940 -540 0 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 940 -380 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/ipin.sym} 380 -720 0 0 {name=p4 lab=Vref}
C {devices/isource.sym} 280 -750 0 0 {name=I0 value=20u}
C {/home/eslam/mabrains/Analog_blocks/Analog_Blocks/LDO/Schematic/LDO_Folded_1.8v/Error_amplifier_Folded.sym} 620 -660 0 0 {name=x1}
