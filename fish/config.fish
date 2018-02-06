# set EDITOR
set -x EDITOR vim
# set powerline
set fish_function_path $fish_function_path "/usr/lib/python3.6/site-packages/powerline/bindings/fish"
powerline-setup
# set environment modules
test -e /etc/modules/init/fish; and source /etc/modules/init/fish
test -e /etc/modules/init/fish_completion; and source /etc/modules/init/fish_completion
# set intel vtune amplifier
module load intel
