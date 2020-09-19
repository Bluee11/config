#!/bin/bash

##The goal of this is a personal install script for when I install a minimal Fedora install. Hopefully I shouldn't forget anything.
#I should be breaking things up so that if I decide that I don't need something, I should be able to comment it out and it should be ignored.
#I'll probably see if I can expand the script so that it moves my config files to the .config folder.


###Repositories

#This repo allows you to install Alacritty which at the moment is my preferred terminal
dnf copr enable pschyska/alacritty

#This repo allows you to install i3-gaps instead of the standard i3 that's already in the main Fedora repos
dnf copr enable fuhrmann/i3-gaps

#This should enable the RPMFusion repos
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

###Software

#This line is for terminal stuff
dnf install alacritty bpytop neofetch vim

#this line I think installs codecs that stuff like Firefox needs to play videos
dnf groupupdate sound-and-video

#This line should install Nvidia drivers  
dnf install akmod-nvidia

#This line should install the stuff needed for a graphical enviornment (display manager, window manager, etc.)
dnf install lightdm lightdm-slick-greeter i3-gaps rofi polybar

#this line should install extra programs like Steam and Discord. If you don't want them you can just remove what you don't want.
dnf install steam discord lutris 

###Config files

#these lines should copy the files from the config folder added by cloning my repo, and placing them in the .config folder
cp /config/alacritty .config/ -r
cp /config/i3 .config/ -r
cp /config/polybar .config/ -r
cp /config/rofi .config/ -r
