v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 470 -730 470 -650 { lab=Vin}
N 370 -620 430 -620 { lab=Vc}
N 470 -620 570 -620 { lab=Vin}
N 570 -710 570 -620 { lab=Vin}
N 470 -710 570 -710 { lab=Vin}
N 470 -590 470 -550 { lab=Vout}
N 470 -570 630 -570 { lab=Vout}
N 470 -330 580 -330 { lab=0}
N 580 -390 580 -330 { lab=0}
N 470 -490 470 -450 { lab=Vref}
N 470 -390 470 -330 { lab=0}
N 470 -330 470 -310 { lab=0}
N 410 -470 470 -470 { lab=Vref}
N 580 -570 580 -450 { lab=Vout}
N 920 -710 920 -650 { lab=Vin}
N 920 -620 1020 -620 { lab=Vin}
N 1020 -710 1020 -620 { lab=Vin}
N 920 -710 1020 -710 { lab=Vin}
N 820 -620 880 -620 { lab=Vc}
N 920 -590 920 -520 { lab=#net1}
N 570 -710 920 -710 { lab=Vin}
N 920 -460 920 -330 { lab=0}
N 580 -330 920 -330 { lab=0}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 450 -620 0 0 {name=M1
L=0.5
W=20
nf=1
mult=180
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 470 -730 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 370 -620 0 0 {name=l2 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} 470 -310 0 0 {name=l3 sig_type=std_logic lab=0}
C {devices/code_shown.sym} 130 -710 0 0 {name=ngspice
only_toplevel=false
value="
VVc Vc 0 0.2
VVin Vin 0 2
VVref Vref 0 1.2
.op
"}
C {devices/res.sym} 470 -520 0 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 630 -570 0 1 {name=l4 sig_type=std_logic lab=Vout}
C {devices/isource.sym} 580 -420 0 0 {name=I0 value=50m}
C {devices/res.sym} 470 -420 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 410 -470 0 0 {name=l5 sig_type=std_logic lab=Vref}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 900 -620 0 0 {name=M2
L=0.5
W=20
nf=1
mult=260
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 820 -620 0 0 {name=l6 sig_type=std_logic lab=Vc}
C {devices/vsource.sym} 920 -490 0 0 {name=V1 value=1.8}
