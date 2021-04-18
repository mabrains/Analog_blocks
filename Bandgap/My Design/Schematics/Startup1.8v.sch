v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -2920 -410 -2920 -270 { lab=#net1}
N -2880 -240 -2820 -240 { lab=Vhigh}
N -2820 -440 -2820 -240 { lab=Vhigh}
N -2880 -440 -2820 -440 { lab=Vhigh}
N -3040 -340 -2920 -340 { lab=#net1}
N -3080 -520 -3080 -370 { lab=Vdd}
N -3080 -520 -2920 -520 { lab=Vdd}
N -2920 -520 -2920 -470 { lab=Vdd}
N -2920 -210 -2920 -130 { lab=0}
N -3000 -240 -2920 -240 { lab=0}
N -3000 -240 -3000 -160 { lab=0}
N -3000 -160 -2920 -160 { lab=0}
N -3020 -440 -2915 -440 { lab=Vdd}
N -3020 -520 -3020 -440 { lab=Vdd}
N -3180 -340 -3075 -340 { lab=Vdd}
N -3180 -400 -3180 -340 { lab=Vdd}
N -3180 -400 -3080 -400 { lab=Vdd}
N -3080 -300 -2720 -300 { lab=Vplus}
N -3080 -310 -3080 -300 { lab=Vplus}
N -2820 -380 -2720 -380 { lab=Vhigh}
C {devices/lab_pin.sym} -2920 -130 0 0 {name=l1 sig_type=std_logic lab=0}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -2900 -240 0 1 {name=M1
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} -3080 -520 0 0 {name=l4 sig_type=std_logic lab=Vdd}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -2900 -440 0 1 {name=M2
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
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -3060 -340 0 1 {name=M3
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
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/opin.sym} -2720 -380 0 0 {name=p1 lab=Vhigh}
C {devices/opin.sym} -2720 -300 0 0 {name=p2 lab=Vplus}
