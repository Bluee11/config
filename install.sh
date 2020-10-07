#!/bin/bash

## The goal of this script is for installing and setting up a minimal installation of Fedora in such a way that I would consider it "minimal" for my usage.

## this file should be set up in such a way that anyone reading it should be able to comment out lines that they dont't need (ex. if you don't need nvidia graphics drivers, you can comment out the Nvidia drivers install line, and it should still install everything else fine.)

###Repositories

# This repo has Alacritty which is my preferred terminal emulator.
dnf copr enable pschyska/alacritty -y

# This repo has i3-gaps which I prefer over standard i3.
dnf copr enable fuhrmann/i3-gaps -y

# This enbales the RPMFusion repos which are needed for software like Nvidia's driverss.
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

###Software

# This line installs termainal commands that I use.
dnf install alacritty bpytop neofetch vim -y

# This line I think installs codecs that stuff like Firefox needs to play videos.
dnf groupupdate sound-and-video -y

# This line should install Nvidia drivers. 
dnf install akmod-nvidia -y

# These commands install and enable lightdm as the display manager for logging in.
dnf install Xorg lightdm lightdm-slick-greeter -y 

systemctl enable lightdm.service
systemctl set-default graphical.target

# This installs my window manager setup.
dnf install i3-gaps rofi polybar -y 

# This line installs fontawesome which I use for icons for my workspaces on polybar
dnf install fontawesome-fonts -y
# This installs general software like a file explorer, a text editor, etc.
dnf install Firefox thunar notepadqq flameshot -y

# This instals Game launchers and chat software like Lutris, Steam, and Discord.
dnf install steam discord lutris -y 

###Config

xrandr -s 1920x1080

