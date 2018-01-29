#!/bin/fish

set platform (uname -m)

if [ $platform = "x86_64" ]
    set bin_dir 'bin64'
else
    set bin_dir 'bin32'
end

set PATH "/home/chenzhihao/intel/vtune_amplifier_2018.1.0.535340/$bin_dir" $PATH

set -x VTUNE_AMPLIFIER_2018_DIR '/home/chenzhihao/intel/vtune_amplifier_2018.1.0.535340'
