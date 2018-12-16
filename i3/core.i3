# This file contains all of the core envars and keybindings required by all other scripts

# always recompile config upon restart
exec_always "~/.config/i3/process-config.sh"

# MOD KEY
set $mod Mod4

# MISC KEYS
# set the standard direction keys when arrow keys are not used (vim keys!)
set $up k
set $down j
set $left h
set $right l