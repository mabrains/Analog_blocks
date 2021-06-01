v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1290 -940 -1290 -850 { lab=vdd}
N -1290 -660 -1290 -560 { lab=0}
N -1540 -560 -1290 -560 { lab=0}
N -1540 -695 -1455 -695 { lab=vp}
N -1125 -755 -1050 -755 { lab=Vout}
N -1730 -940 -1290 -940 { lab=vdd}
N -1680 -755 -1455 -755 { lab=#net1}
N -1680 -825 -1680 -755 { lab=#net1}
N -1680 -940 -1680 -885 { lab=vdd}
N -1080 -755 -1080 -685 { lab=Vout}
N -1080 -625 -1080 -560 { lab=0}
N -1290 -560 -1080 -560 { lab=0}
N -1540 -815 -1455 -815 { lab=vn}
C {devices/code_shown.sym} -995 -1155 0 0 {name=NGSPICE
only_toplevel=true
value="
***************************************************
*Source intialization
***************************************************
Vsup vdd 0 DC 1.8 AC 0 
Vpos vp 0 DC 0 AC 0
Vneg vn 0 DC 0 AC 0
****************************************************
*DC analysis 
****************************************************
.control
alter Vpos DC = 0.9 
alter Vneg DC = 0.9 
define Power(x,y) -(x*y)
op
show
print Power(v(vdd),Vsup#branch)
.endc
*****************************************************
*Noise analysis
*****************************************************
.control
alter Vpos DC = 0.9 
alter Vpos AC = 1
alter Vneg DC = 0.9 
alter Vneg AC = -1
noise v(vout) Vpos dec 10 1 50MEG Vneg dec 10 1 50MEG
setplot noise1
plot inoise_spectrum 
.endc
****************************************************
*AC analysis differential mode
****************************************************
.control
alter Vpos DC = 0.9 
alter Vpos AC = 1
alter Vneg DC = 0.9 
alter Vneg AC = -1
set units = degrees
ac dec 10 1 100MEG
plot db(Vout)
plot 180/pi*phase(Vout) 
meas ac Avd FIND vdb(Vout) AT=10
meas ac GBW WHEN vdb(Vout)= 0
let P = 180+vp(Vout)
meas ac PM FIND P WHEN vdb(Vout)=0
.endc
*****************************************************
*AC analysis common mode
*****************************************************
.control
alter Vpos DC = 0.9 
alter Vpos AC = 1
alter Vneg DC = 0.9 
alter Vneg AC = 1
ac dec 10 1 100MEG
plot db(Vout)
meas ac Acm FIND vdb(Vout) AT=10
.endc
*****************************************************
*PSRR analysis
*****************************************************
.control
alter Vsup AC = 1
alter Vpos DC = 0.9
alter Vpos AC = 0 
alter Vneg DC = 0.9
alter Vneg AC = 0
ac dec 10 1 100MEG
plot db(Vout)
meas ac PSR_1k FIND vdb(Vout) AT=1k
meas ac PSR_1M FIND vdb(vout) AT=1Meg 
.endc
*****************************************************
.end
" }
C {devices/lab_pin.sym} -1730 -940 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -1540 -695 0 0 {name=l3 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} -1540 -560 0 0 {name=l4 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -1050 -755 0 1 {name=l5 sig_type=std_logic lab=Vout}
C {devices/isource.sym} -1680 -855 0 0 {name=I0 value=20u}
C {devices/capa.sym} -1080 -655 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -1540 -815 0 0 {name=l2 sig_type=std_logic lab=vn}
C {/home/eslam/Analog_blocks/Analog_Blocks/OTA/Schematic/Miller_OTA/Transistor1.8v/Miller_OTA_NMOS_1.8v.sym} -1295 -755 0 0 {name=x1}
