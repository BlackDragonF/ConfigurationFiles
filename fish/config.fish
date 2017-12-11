# set greeting
set fish_greeting '/* may the data wind through the vally */' 
# switch to vi mode
set -g fish_key_bindings fish_vi_key_bindings
# set EDITOR
set -x EDITOR vim
# set powerline
set fish_function_path $fish_function_path "/usr/lib/python3.6/site-packages/powerline/bindings/fish"
powerline-setup
