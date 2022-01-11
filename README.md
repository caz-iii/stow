# Fedora Workstation

List of everything to do on a fresh Fedora installation.

## OS Installation Media

1. Get the Fedora Media Writer: [fedora](getfedora.org)
2. Run through the installation

## Add self to sudoers

```bash
sudo nano /etc/sudoers
```

1. Uncomment: %wheel ALL=(ALL) NOPASSWD: ALL
2. Then, at end of file, for your username add: 

user1 ALL=(ALL) NOPASSWD: ALL

## Clamshell Mode

```bash
sudo nano /etc/systemd/logind.conf
```

HandleLidSwitch=Ignore

Save and reboot.

## DNF Config & Update

```bash
sudo nano /etc/dnf/dnf.conf
```

fastestmirror=True

max_parallel_downloads=10

defaultyes=True

```bash
sudo dnf update -y
```

## Enable RPM & Multimedia Codecs

[RPM](https://docs.fedoraproject.org/en-US/quick-docs/setup_rpmfusion/)

```bash
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
```

```bash
sudo dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

[Codecs](https://docs.fedoraproject.org/en-US/quick-docs/assembly_installing-plugins-for-playing-movies-and-music/)

```bash
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
```

```bash
sudo dnf install -y lame\* --exclude=lame-devel
```

```bash
sudo dnf group upgrade --with-optional Multimedia
```

## Git

```
git config --global credential.helper store
```

## Install Packages

```
sudo dnf install -y neofetch awesome rofi nitrogen xrandr arandr ranger vim nvidia-settings lxappearance
```

## VSCodium

[Codium](vscodium.com)

## MarkText

[GitHub](https://github.com/marktext/marktext)

Create a desktop entry in ~/.local/share/applications:

[Desktop Entry]

Type=Application

Name=MarkText

Comment=MarkText

Icon=/home/z/AppImages/marktext/marktext.png

Exec=/home/z/AppImages/marktext/marktext-x86_64.AppImage

Terminal=false

Categories=Office

**Save as MarkText.desktop**

## Configure

Set configurations for AwesomeWM, rofi, nvidia: "force full composition", displays, etc.

[Dracula](https://draculatheme.com/gtk)