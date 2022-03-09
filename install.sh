#!/bin/bash

# Update and Enable RPM
sudo dnf update -y
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Codecs
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade -y --with-optional Multimedia

# Packages I use
sudo dnf install -y awesome electrum elementary-icon-theme feh flameshot gimp hugo lxappearance mpv npm neofetch newsboat nitrogen ranger rofi stow transmission vim arandr xrandr nvidia-settings 

mkdir ~/flameshots
rm ~/.bashrc
stow .
reboot