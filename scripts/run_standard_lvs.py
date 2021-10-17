########################################################################################################################
##
# Mabrains Company LLC ("Mabrains Company LLC") CONFIDENTIAL
##
# Copyright (C) 2018-2021 Mabrains Company LLC <contact@mabrains.com>
##
# This file is authored by:
#           - <Mina Maksimous> <mina_maksimous@mabrains.com>
##
# This code is provided solely for Mabrains use and can not be sold or reused for any other purpose by
# any person or entity without prior authorization from Mabrains.
##
# NOTICE:  All information contained herein is, and remains the property of Mabrains Company LLC.
# The intellectual and technical concepts contained herein are proprietary to Mabrains Company LLC
# and may be covered by U.S. and Foreign Patents, patents in process, and are protected by
# trade secret or copyright law.
# Dissemination of this information or reproduction of this material is strictly forbidden
# unless prior written permission is obtained
# from Mabrains Company LLC.  Access to the source code contained herein is hereby forbidden to anyone except current
# Mabrains Company LLC employees, managers or contractors who have executed Confidentiality and Non-disclosure
# agreements explicitly covering such access.
#
##
# The copyright notice above does not evidence any actual or intended publication or disclosure
# of  this source code, which includes
# information that is confidential and/or proprietary, and is a trade secret, of  Mabrains Company LLC.
# ANY REPRODUCTION, MODIFICATION, DISTRIBUTION, PUBLIC  PERFORMANCE, OR PUBLIC DISPLAY OF OR THROUGH USE
# OF THIS  SOURCE CODE  WITHOUT THE EXPRESS WRITTEN CONSENT OF Mabrains Company LLC IS STRICTLY PROHIBITED,
# AND IN VIOLATION OF APPLICABLE LAWS AND INTERNATIONAL TREATIES.  THE RECEIPT OR POSSESSION OF  THIS SOURCE CODE
# AND/OR RELATED INFORMATION DOES NOT CONVEY OR IMPLY ANY RIGHTS TO REPRODUCE, DISCLOSE OR DISTRIBUTE ITS CONTENTS,
# OR TO MANUFACTURE, USE, OR SELL ANYTHING THAT IT  MAY DESCRIBE, IN WHOLE OR IN PART.
##
# Mabrains retains the full rights for the software which includes the following but not limited to: right to sell,
# resell, repackage, distribute, creating a Mabrains Company LLC using that code, use, reuse or modify the code created.
##
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED
# TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL
# MABRAINS COMPANY LLC OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT,TORT OR OTHERWISE, ARISING FROM
# , OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# MABRAINS COMPANY LLC DOES NOT HOLD ANY RESPONSIBILITIES THAT MIGHT RISE DUE TO LOSE OF MONEY OR DIGITAL ASSETS USING
# THIS SOFTWARE AND IT IS SOLELY THE RESPONSIBILITY OF THE SOFTWARE USER.
#
# This banner can not be removed by anyone other than Mabrains Company LLC.
##
########################################################################################################################

#!/bin/env python3
#-------------------------------------------------------------------------
# run_standard_drc.py ---  A script to run magic in batch mode and apply
# full DRC checks on a layout.  This inclues full DRC but excludes
# antenna and density checks, for which there are separate scripts.
#
# Usage:
#
#   run_standard_drc.py <layout_name>
#
# Results:
#
#   generates a file "<layout_name>_drc.txt" containing a human-readable
#   list of the DRC errors.
# 	
#-------------------------------------------------------------------------

import subprocess
import shutil
import glob
import sys
import os
import re

# Work in progress

def run_full_lvs(layout_name, output_file,compare_netlist,report_file,cell_name="default"):
    is_gds = False
    if cell_name == "default":
        cell_name = layout_name
    # Remove any extension from layout_name
    layout_root = layout_name
    layout_name = os.path.splitext(layout_root)[0]
    layout_ext = os.path.splitext(layout_root)[1]

    if layout_ext != '.mag':
        # Assume this is GDS
        # Is the layout file in the current directory, or a full
        # path, or is this a project directory?

        is_gds = True
        if layout_name[0] == '/':
            gdspath = os.path.split(layout_name)[0]
            layout_name = os.path.split(layout_name)[1]

        else:
            if not os.path.isfile(layout_root):
                if not os.path.isfile('gds/' + layout_root):
                    print('Error:  Cannot find GDS file ' + layout_root)
                    return
                else:
                    gdspath = os.getcwd() + '/gds'
            else:
                gdspath = os.getcwd()

        if os.path.isdir('mag/'):
            magpath = os.getcwd() + '/mag'
        else:
            magpath = os.getcwd() 

    else:
        # File is a .mag layout
        # Is the layout file in the current directory, or a full
        # path, or is this a project directory?

        if layout_name[0] == '/':
            magpath = os.path.split(layout_name)[0]
            layout_name = os.path.split(layout_name)[1]

        else:
            if not os.path.isfile(layout_name + '.mag'):
                if not os.path.isfile('mag/' + layout_name + '.mag'):
                    print('Error:  Cannot find file ' + layout_name + '.mag')
                    return
                else:
                    magpath = os.getcwd() + '/mag'
            else:
                magpath = os.getcwd()

    if output_file == '':
        output_file = layout_name + '_drc.txt'

    # Check for presence of a .magicrc file, or else check for environment
    # variable PDKPATH, or PDK_PATH

    myenv = os.environ.copy()
    myenv['MAGTYPE'] = 'mag'

    if os.path.isfile(magpath + '/.magicrc'):
       rcfile = magpath + '/.magicrc'
    elif os.path.isfile(os.getcwd() + '/.magicrc'):
       rcfile = os.getcwd() + '/.magicrc'
    else:
        if 'PDKPATH' in myenv:
            rcpathroot = myenv['PDKPATH'] + '/libs.tech/magic'
            rcfile = glob.glob(rcpathroot + '/*.magicrc')[0]
            netgensetroot = myenv['PDKPATH'] + '/libs.tech/netgen'
            netgenset = glob.glob(netgensetroot + '/sky130A_setup.tcl')[0]
        elif 'PDK_PATH' in myenv:
            rcpathroot = myenv['PDKPATH'] + '/libs.tech/magic'
            rcfile = glob.glob(rcpathroot + '/*.magicrc')[0]
            netgensetroot = myenv['PDKPATH'] + '/libs.tech/netgen'
            netgenset = glob.glob(netgensetroot + '/sky130A_setup.tcl')[0]
        else:
            print('Error: Cannot get magic rcfile for the technology!')
            return

    # Generate the parastic extraction Tcl script

    print('Evaluating parastic extraction for layout ' + layout_name)
    print(magpath)
    with open(magpath + '/run_magic_lvs.tcl', 'w') as ofile:
        print('# run_magic_drc.tcl ---', file=ofile)
        print('#    batch script for running DRC', file=ofile)
        print('', file=ofile)
        print('crashbackups stop', file=ofile)
        print('drc euclidean on', file=ofile)
        print('drc style drc(full)', file=ofile)
        print('drc on', file=ofile)
        print('snap internal', file=ofile)
        if is_gds:
            print('gds flatglob *__example_*', file=ofile)
            print('gds flatten true', file=ofile)
            print('gds read ' + gdspath + '/' + layout_name, file=ofile)
            print('load ' + cell_name, file=ofile)
        else:
            print('load ' + layout_name + ' -dereference', file=ofile)
        print('select top cell', file=ofile)
        print('expand', file=ofile)
        print('extract all', file=ofile)
        print('ext2spice lvs', file=ofile)
        print('ext2spice -M -o ' + output_file, file=ofile)
        # print('set ofile [open ' + output_file + ' w]', file=ofile)
        # print('puts $ofile "DRC errors for cell ' + cell_name + '"', file=ofile)
        # print('puts $ofile "--------------------------------------------"', file=ofile)
        # print('foreach {whytext rectlist} $allerrors {', file=ofile)
        # print('   puts $ofile ""', file=ofile)
        # print('   puts $ofile $whytext', file=ofile)
        # print('   foreach rect $rectlist {', file=ofile)
        # print('       set llx [format "%.3f" [expr $oscale * [lindex $rect 0]]]',
		# 		file=ofile)
        # print('       set lly [format "%.3f" [expr $oscale * [lindex $rect 1]]]',
		# 		file=ofile)
        # print('       set urx [format "%.3f" [expr $oscale * [lindex $rect 2]]]',
		# 		file=ofile)
        # print('       set ury [format "%.3f" [expr $oscale * [lindex $rect 3]]]',
		# 		file=ofile)
        # print('       puts $ofile "$llx $lly $urx $ury"', file=ofile)
        # print('   }', file=ofile)
        # print('}', file=ofile)
        # print('close $ofile', file=ofile)

    # Run the DRC Tcl script

    print('Running: magic -dnull -noconsole -rcfile ' + rcfile + ' run_magic_lvs.tcl')
    print('Running in directory: ' + magpath)
    mproc = subprocess.run(['magic', '-dnull', '-noconsole', '-rcfile',
		rcfile, 'run_magic_lvs.tcl'],
		env = myenv, cwd = magpath,
		stdin = subprocess.DEVNULL, stdout = subprocess.PIPE,
		stderr = subprocess.PIPE, universal_newlines = True)
    if mproc.stdout:
        for line in mproc.stdout.splitlines():
            print(line)
    if mproc.stderr:
        print('Error message output from magic:')
        for line in mproc.stderr.splitlines():
            print(line)
    if mproc.returncode != 0:
        print('ERROR:  Magic exited with status ' + str(mproc.returncode))

    print('Done! magic extraction')
    ##netgen part 
    netgen_run = subprocess.run(['netgen', '-batch', 'lvs',output_file,compare_netlist,
		netgenset, report_file],
        env = myenv, cwd = magpath,
		stdin = subprocess.DEVNULL, stdout = subprocess.PIPE,
		stderr = subprocess.PIPE, universal_newlines = True)

    if netgen_run.stdout:
        for line in netgen_run.stdout.splitlines():
            print(line)
    if netgen_run.stderr:
        print('Error message output from netgen:')
        for line in netgen_run.stderr.splitlines():
            print(line)
    if netgen_run.returncode != 0:
        print('ERROR:  Netgen exited with status ' + str(netgen_run.returncode))


# If called as main, run all DRC tests

if __name__ == '__main__':

    # Divide up command line into options and arguments
    options = []
    arguments = []
    for item in sys.argv[1:]:
        if item.find('-', 0) == 0:
            options.append(item)
        else:
            arguments.append(item)

    # Need one argument:  path to layout
    # If two arguments, then 2nd argument is the output file.

    if len(arguments) > 0 and len(arguments) < 3:
        layout_root = arguments[0]

    if len(arguments) == 1:
        out_filename = ""
    elif len(arguments) > 2:
        out_filename = arguments[1]


    if len(arguments) > 0 and len(arguments) < 6:
        run_full_lvs(layout_name=arguments[0], output_file=arguments[1],compare_netlist=arguments[2],report_file=arguments[3],cell_name=arguments[4])
    else:
        print("Usage:  run_standard_drc.py <layout_name> [<output_file>] [options]")
        print("Options:")
        print("   (none)")
    

