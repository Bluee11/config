#!/bin/bash

##The goal of this is a personal install script for when I install a minimal Fedora install. Hopefully I shouldn't forget anything.

#add repositories
sudo dnf copr enable pschyska/alacritty
sudo dnf copr enable fuhrmann/i3-gaps
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
#software
sudo dnf install alacritty steam lutris thunar bpytop
sudo dnf groupupdate sound-and-video
sudo dnf install akmod-nvidia

#Graphical Enviornment
sudo dnf install lightdm i3-gaps rofi polybar 
