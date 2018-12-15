# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!
#
# This config file uses keycodes (bindsym) and was written for the QWERTY
# layout.
#
# To get a config file with the same key positions, but for your current
# layout, use the i3-config-wizard
#

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn t scale on retina/hidpi displays.


### Display Settings ###

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
    status_command i3status
}

### ###

### Basic Movement ###

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod
#
# Focus the parent container
bindsym $mod+a focus parent
# Focus the child container
bindsym $mod+c focus child

### ###

### Window Manipulation ###

# Change container layout (stacked, tabbed, toggle split)
bindsym $mod+g layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# Split in horizontal orientation
bindsym $mod+s split h
# Split in vertical orientation
bindsym $mod+v split v

# Toggle tiling / floating
bindsym $mod+Shift+space floating toggle
# Change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# move the currently focused window to the scratchpad
bindsym $mod+Shift+minus move scratchpad
# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command (awkwardly) cycles
# through them.
bindsym $mod+minus scratchpad show

# Enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

### ###

### Core Program Execution ###

# Kill focused window
bindsym $mod+q kill

# Start a terminal
bindsym $mod+Return exec kitty

# Start dmenu (a program launcher)
# bindsym $mod+d exec dmenu_run
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed. This just makes it a bit prettier.
bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

### ###

### Workspace Management ###

# Define names for default workspaces for which we configure key bindings later on
set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "10"

# Switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10

# Move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8
bindsym $mod+Shift+9 move container to workspace $ws9
bindsym $mod+Shift+0 move container to workspace $ws10

### ###

### Modes ###

## Resize Mode ##
# Resize window (you can also use the mouse for that)
bindsym $mod+r mode "resize"

mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        bindsym $left       resize shrink width 10 px or 10 ppt
        bindsym $down       resize grow height 10 px or 10 ppt
        bindsym $up         resize shrink height 10 px or 10 ppt
        bindsym $right      resize grow width 10 px or 10 ppt
        # Arrow key alternatives
        bindsym Left        resize shrink width 10 px or 10 ppt
        bindsym Down        resize grow height 10 px or 10 ppt
        bindsym Up          resize shrink height 10 px or 10 ppt
        bindsym Right       resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape or $mod+r
        bindsym Return mode "default"
        bindsym Escape mode "default"
        bindsym $mod+r mode "default"
}

## ##

### ###

## Visual Config ##

# disable widow borders and titles
for_window [class="^.*"] border none
# TODO: enable compton

## ##
