# run_magic_drc.tcl ---
#    batch script for running DRC

crashbackups stop
drc euclidean on
drc style drc(full)
drc on
snap internal
gds flatglob *__example_*
gds flatten true
gds read /home/eslam/Analog_blocks/layout/BGR/Bandgap1v8
load Bandgap1v8
select top cell
expand
extract all
ext2spice lvs
ext2spice -M -o BGR.spice
