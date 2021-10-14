"""Ldo Sweeper

Usage:
  outside.py [--n=<num>] options

Options:
  -h --help     Show this screen.
  -v --version     Show version.
  --n=<num>     Number of cores used.
"""




import os
import concurrent.futures
import multiprocessing
from pathlib import Path
from docopt import docopt

def generate_netlist(corner,supply,temp,resistor):


    netlist_analysis = f"""* LDO netlist 
**.subckt untitled-11
XM12 inn mir VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=2 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XM2 inp mir VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=2 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XM3 bg_out mir VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=2 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XQ2 GND GND net3 sky130_fd_pr__pnp_05v5_W0p68L0p68
XQ3 GND GND net1 sky130_fd_pr__pnp_05v5_W0p68L0p68
XQ4 GND GND net1 sky130_fd_pr__pnp_05v5_W0p68L0p68
XQ8 GND GND net1 sky130_fd_pr__pnp_05v5_W0p68L0p68
XQ10 GND GND net1 sky130_fd_pr__pnp_05v5_W0p68L0p68
XQ12 GND GND net1 sky130_fd_pr__pnp_05v5_W0p68L0p68
XQ14 GND GND net1 sky130_fd_pr__pnp_05v5_W0p68L0p68
XQ16 GND GND net1 sky130_fd_pr__pnp_05v5_W0p68L0p68
XQ18 GND GND net1 sky130_fd_pr__pnp_05v5_W0p68L0p68
XM15 net2 bg_out GND GND sky130_fd_pr__nfet_g5v0d10v5 L=0.5 W=10 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=8 m=8 
XM16 VDD net2 inn GND sky130_fd_pr__nfet_g5v0d10v5 L=0.5 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=4 m=4 
XM17 net2 bg_out VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=5 W=0.42 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=2 m=2 
XM4 net5 net5 VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=2 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XM19 net5 inp net4 GND sky130_fd_pr__nfet_g5v0d10v5 L=1 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XM1 mir inn net4 GND sky130_fd_pr__nfet_g5v0d10v5 L=1 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XM7 mir net5 VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=2 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XM22 net4 net6 GND GND sky130_fd_pr__nfet_g5v0d10v5 L=2 W=5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XM8 net6 mir VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=2 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XM6 net6 net6 GND GND sky130_fd_pr__nfet_g5v0d10v5 L=2 W=5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=4 m=4 
XC1 mir GND sky130_fd_pr__cap_mim_m3_1 W=16 L=16 MF=1 m=1
XR7 GND bg_out GND sky130_fd_pr__res_xhigh_po_0p35 L=14.5 mult=1 m=1
XR6 GND net7 GND sky130_fd_pr__res_xhigh_po_0p35 L=15.2 mult=1 m=1
XR4 GND net3 GND sky130_fd_pr__res_xhigh_po_0p35 L=15.2 mult=1 m=1
XR2 net1 net7 GND sky130_fd_pr__res_xhigh_po_0p35 L=2.3 mult=1 m=1
XR1 net7 inp GND sky130_fd_pr__res_xhigh_po_0p35 L=5 mult=1 m=1
XR3 net3 inn GND sky130_fd_pr__res_xhigh_po_0p35 L=5 mult=1 m=1
XM5 net9 net9 VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=1.2 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=4 m=4 
XM9 net9 bg_out net10 GND sky130_fd_pr__nfet_g5v0d10v5 L=1 W=2 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=8 m=8 
XM10 net8 pos net10 GND sky130_fd_pr__nfet_g5v0d10v5 L=1 W=2 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XM11 net8 net9 VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=1.2 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=4 m=4 
XM13 net10 vb GND GND sky130_fd_pr__nfet_g5v0d10v5 L=1 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=8 m=8 
XM14 out net8 VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=1.2 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=12 m=12 
XM18 out vb GND GND sky130_fd_pr__nfet_g5v0d10v5 L=1 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=12 m=12 
XM20 vb vb GND GND sky130_fd_pr__nfet_g5v0d10v5 L=1 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=4 m=4 
XM24 ldo_out out VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=0.5 W=10 nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=800 m=800 
C2 net8 net11 8p m=1
R9 out net11 15k m=1
XM26 vb mir VDD VDD sky130_fd_pr__pfet_g5v0d10v5 L=2 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=4 m=4 
XR10 pos ldo_out GND sky130_fd_pr__res_xhigh_po_0p35 L=5.5 mult=1 m=1
XR11 GND pos GND sky130_fd_pr__res_xhigh_po_0p35 L=9 mult=1 m=1

**** begin user architecture code


R5 ldo_out GND {resistor} m=1
Vs VDD GND {supply}
.lib /home/mustafa/mabrains/pdks/share/pdk/sky130A/libs.tech/ngspice/sky130.lib_mod.spice {corner}
.nodeset v(inn)=1.1
.nodeset v(inp)=1.1
.nodeset v(mir)=0.9
.nodeset v(net5)=0.9
.nodeset v(bg_out)=1.2
.nodeset v(ldo_out)=1.8
.nodeset v(pos)=1.2
.nodeset v(net3)=0.8
.nodeset v(net1)=0.7
.nodeset v(net6)=0.9
.nodeset v(net7)=0.75
.option TEMP={temp}

*User_defined_functions
.control
define max(vector_name) (vecmax(vector_name))
define min(vector_name) (vecmin(vector_name))
.endc

*Temp_sweep
.control
dc temp 80 0 -1
let temp_coeff=1000000*(max(ldo_out)-min(ldo_out))/85
print temp_coeff
set wr_singlescale
set wr_vecnames
set appendwrite
wrdata ./run_results/temp_sweep_{resistor}_{temp}_{supply}_{corner} temp_coeff
.endc
*supply_sweep
.control
dc Vs 3 0 -0.02
meas DC Vldo_Sup_2 FIND ldo_out AT=2
meas DC Vldo_Sup_3 FIND ldo_out AT=3
let line_reg=Vldo_Sup_3-Vldo_Sup_2
print line_reg
meas DC vin WHEN v(ldo_out)=1.764
let dropout=vin-1.764
print dropout
set wr_singlescale
set wr_vecnames
set appendwrite
wrdata ./run_results/dc_sweep_{resistor}_{temp}_{supply}_{corner} dropout line_reg

.endc
*PSRR_Analysis
.control
alter Vs AC =1
ac dec 10 1 1G
meas AC PSRR100 FIND vdb(ldo_out) AT=100
meas AC PSRR100k FIND vdb(ldo_out) AT=100k
set appendwrite
set wr_singlescale
set wr_vecnames
wrdata ./run_results/psrr_{resistor}_{temp}_{supply}_{corner} PSRR100 PSRR100k
.endc
"""


    with open(f"./netlist/ldo_{resistor}_{temp}_{supply}_{corner}.net","w") as f:
        f.write(netlist_analysis)
    
def collect_results(table_name, corner,supply,temp,resistor,num_specs):
   
    file_name =f"./run_results/{table_name}_{resistor}_{temp}_{supply}_{corner}"
    row = f"{corner},{temp},{resistor},{supply}"

    if not os.path.isfile(file_name):
        for i in range(num_specs):
            row+=",error"
        return row+"\n"

    with open(file_name,"r") as f:
        lines = f.readlines()

    specs = lines[1]
    for i in range(num_specs):
        row+=f",{specs.split()[i+1]}"

    return row+"\n"


def run_simulation(netlist_path, log_file):
    os.system(f"ngspice -b {netlist_path} > {log_file} 2>&1")

def main():
    arguments = docopt(__doc__, version='Ldo Sweeper 1.0')
    # corners = ["tt", "tt_ll", "tt_lh","tt_hl", "tt_hh",
    #             "ff", "ff_ll", "ff_lh","ff_hl", "ff_hh",
    #             "fs", "fs_ll", "fs_lh","fs_hl", "fs_hh",
    #             "ss", "ss_ll", "ss_lh","ss_hl", "ss_hh",
    #             "sf", "sf_ll", "sf_lh","sf_hl", "sf_hh"]
    # supplys = [2, 2.2, 2.4]
    # temps = [0,27,85]
    # resistors = [18e3, 180, 18]
    
    corners = ["tt"]
    supplys = [2]
    temps = [27]
    resistors = [18000]
    psrr_table = "corner,temp,resistor,supply,psr100,psr100k\n"
    dc_sweep_table = "corner,temp,resistor,supply,dropout,line_reg\n"
    temp_sweep_table = "corner,temp,resistor,supply,temp_coeff\n"

    #workers_count = 2*multiprocessing.cpu_count()
    
    Path("./netlist").mkdir(parents=True, exist_ok=True)
    Path("./run_results").mkdir(parents=True, exist_ok=True)
    Path("./log").mkdir(parents=True, exist_ok=True)
    Path("./tables").mkdir(parents=True, exist_ok=True)

    workers_count = 26 if arguments['--n'] == None else int(arguments['--n'])
    with concurrent.futures.ProcessPoolExecutor(max_workers=workers_count) as executor:
        for corner in corners:
            for supply in supplys:
                for temp in temps:
                    for resistor in resistors:
                        print(f"Running corner  {corner}  on supply: {supply} temp: {temp} resistor: {resistor}")
                        generate_netlist(corner,supply,temp,resistor)
                        #Running simulation
                        netlist_path = f"./netlist/ldo_{resistor}_{temp}_{supply}_{corner}.net"
                        log_file = f"./log/ldo_{resistor}_{temp}_{supply}_{corner}.log"
                        executor.submit(run_simulation, netlist_path,log_file)
                        
                        psrr_table += collect_results("psrr",corner,supply,temp,resistor,2)
                        dc_sweep_table += collect_results("dc_sweep",corner,supply,temp,resistor,2)
                        temp_sweep_table += collect_results("temp_sweep",corner,supply,temp,resistor,1)

    with open("tables/psrr.csv","w") as f:
        f.write(psrr_table)
    with open("tables/dc_sweep.csv","w") as f:
        f.write(dc_sweep_table)
    with open("tables/temp_sweep.csv","w") as f:
        f.write(temp_sweep_table)   
        
if __name__ == "__main__":
    main()










# os.system(f"""

# if os.path.isdir("/run_results/dc_sweep_{resistor}_{temp}_{supply}_{corner}"):
# then
# if [ grep -Fxq 'Error: measure  vldo_sup_2' ./log/ldo_{resistor}_{temp}_{supply}_{corner}.log ]
# >/run_results/dc_sweep_{resistor}_{temp}_{supply}_{corner}
# cat error_1 >> ./run_results/dc_sweep_{resistor}_{temp}_{supply}_{corner}
# fi
# else
# mkdir -p /run_results/dc_sweep_{resistor}_{temp}_{supply}_{corner}
# cat error_1 >> ./run_results/dc_sweep_{resistor}_{temp}_{supply}_{corner}
# fi


# if os.path.isdir("/run_results/psrr_{resistor}_{temp}_{supply}_{corner}"):
# then
# if grep -Fxq 'Error: measure  psrr100' ./log/ldo_{resistor}_{temp}_{supply}_{corner}.log 
# >/run_results/psrr_{resistor}_{temp}_{supply}_{corner}
# cat error_1 >> ./run_results/psrr_{resistor}_{temp}_{supply}_{corner}
# fi
# else
# mkdir -p /run_results/psrr_{resistor}_{temp}_{supply}_{corner}
# cat error_1 >> ./run_results/psrr_{resistor}_{temp}_{supply}_{corner}
# fi

# if os.path.isdir("/run_results/temp_sweep_{resistor}_{temp}_{supply}_{corner}"):
# then
# if [ grep -Fxq 'out of range' ./log/ldo_{resistor}_{temp}_{supply}_{corner}.log ] 
# >/run_results/temp_sweep_{resistor}_{temp}_{supply}_{corner}
# cat error_1 >> ./run_results/temp_sweep_{resistor}_{temp}_{supply}_{corner}
# fi
# else
# mkdir -p /run_results/temp_sweep_{resistor}_{temp}_{supply}_{corner}
# cat error_1 >> ./run_results/temp_sweep_{resistor}_{temp}_{supply}_{corner}
# fi

# """)