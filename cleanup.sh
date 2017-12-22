#!/bin/bash

# just a quick script to clean up all the dynamically generated files


# cleanup all generated files
msfconsoleX64File=$PWD"/output/EternalBlueX64.rc"
msfconsoleX86File=$PWD"/output/EternalBlueX86.rc"
x86_msf_shellcode=$PWD"/bin/sc_x86_msf.bin"
x64_msf_shellcode=$PWD"/bin/sc_x64_msf.bin"
x86_shellcode=$PWD"/bin/sc_x86.bin"
x64_shellcode=$PWD"/bin/sc_x64.bin"
all_shellcode=$PWD"/bin/sc_all.bin"
mergeScript=$PWD"/merge_shellcode.py"
rawAssembly_x64=$PWD"/assembly/eternalblue_kshellcode_x64"
rawAssembly_x86=$PWD"/assembly/eternalblue_kshellcode_x86"

rm $all_shellcode $rawAssembly_x64  $rawAssembly_x86 $x86_msf_shellcode $x64_msf_shellcode $x86_shellcode $x64_shellcode $msfconsoleX64File $msfconsoleX86File 2>/dev/null


