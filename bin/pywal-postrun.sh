#!/bin/bash

#sets obsidian theme to pywal theme
/home/bells/bin/pywal-obsidianmd/pywal-obsidianmd.sh "/home/bells/.files/.archhex-dotfiles"
#update waybar
pkill -SIGUSR2 waybar

# Sets colors from pywal to cava dynamically 
# The name for the cava color file can be anything really, I just used this to go along with my other templates.
# Do note, that if you want to change any configuration in cava, you WILL have to do it through the configuration file in the TEMPLATES FOLDER.
cp ~/.cache/wal/colors-cava.conf ~/.config/cava/config
cp ~/.cache/wal/colors-dunst ~/.config/dunst/dunstrc

pkill -USR2 cava # Reloads cava's colorscheme configuration
#reloads eww midgets to match theme
eww reload
dunstctl reload
