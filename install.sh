#!/bin/bash

echo "Updating..."
# Update and Enable RPM
sudo dnf update -y
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "Installing codecs..."
# Codecs
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade -y --with-optional Multimedia


echo "Installing packages..."
# Packages I use
sudo dnf install -y \
    arandr \
    awesome \
    electrum \
    elementary-icon-theme \
    feh \
    flameshot \
    gimp \
    hugo \
    lxappearance \
    mpv \
    npm \
    nvidia-settings \
    neofetch \
    newsboat \
    ranger \
    rofi \
    stow \
    vim \
    xrandr 

# NPM and RPM Packages

# taskbook
npm install --global taskbook

# bitwarden
wget https://github.com/bitwarden/desktop/releases/download/v1.32.1/Bitwarden-1.32.1-x86_64.rpm
sudo rpm -i Bitwarden-1.32.1-x86_64.rpm

# onlyoffice
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors.x86_64.rpm
sudo rpm -i onlyoffice-desktopeditors.x86_64.rpm

# marktext
wget https://github.com/marktext/marktext/releases/download/v0.17.1/marktext-x86_64.rpm
sudo rpm -i marktext-x86_64.rpm

# vscodium
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo
sudo dnf install -y codium

# librewolf
sudo rpm --import https://keys.openpgp.org/vks/v1/by-fingerprint/034F7776EF5E0C613D2F7934D29FBD5F93C0CFC3
sudo dnf config-manager --add-repo https://rpm.librewolf.net
sudo dnf install -y librewolf

# Ungoogled Chromium (Fedora 34)
sudo dnf config-manager -add-repo https://download.opensuse.org/repositories/home:/ungoogled_chromium/Fedora_34/home:ungoogled_chromium.repo
sudo dnf install -y ungoogled-chromium

# Ungoogled Chromium (Fedora 35)
# dnf config-manager --add-repo https://download.opensuse.org/repositories/home:/ungoogled_chromium/Fedora_35/home:ungoogled_chromium.repo
# dnf install ungoogled-chromium

echo "Cleaning up..."
mkdir ~/flameshots
rm *.rpm
rm ~/.bashrc
stow .

echo "Rebooting..."
sleep 5
reboot