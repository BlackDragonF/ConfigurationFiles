# set greeting
set fish_greeting '/* may the data wind through the vally */' 
# set EDITOR
set -x EDITOR vim
# set powerline
set fish_function_path $fish_function_path "/usr/lib/python3.6/site-packages/powerline/bindings/fish"
powerline-setup
# set intel vtune amplifier
test -e {$HOME}/.amplxe-vars.fish ; and source {$HOME}/.amplxe-vars.fish
# set environment modules
test -e /etc/modules/init/fish; and source /etc/modules/init/fish
test -e /etc/modules/init/fish_completion; and source /etc/modules/init/fish_completion
