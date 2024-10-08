#!/bin/bash
echo "Select dots to update:


    1) Hyprland Environment (dunst, hypr)
    2) Terminal (kitty, lf, neofetch,icons)
    3) Compat (qt, rofi)
    4) Wayland Extras (waybar, wlogout)
    5) Nvim" 

read ans

if [ $ans=1 ]
  then 
    echo "Backing up .config/hypr"
    mkdir $HOME/.config/hypr.bak
    cp -r $HOME/.config/hypr $HOME/.config/hypr.bak
    echo "Copying dots"
    cp -r .config/hypr $HOME/.config/hypr
  fi
