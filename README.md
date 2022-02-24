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

dnf
```
sudo dnf install -y awesome electrum elementary-icon-theme feh flameshot gimp hugo lxappearance mpv npm neofetch newsboat nitrogen ranger rofi stow transmission vim arandr xrandr nvidia-settings                
```

### RPM / NPM

- [taskbook](https://github.com/klaussinani/taskbook)

- [ungoogled-chromium](https://github.com/ungoogled-software/ungoogled-chromium-fedora)

- [Codium](vscodium.com)

- [MarkText](https://github.com/marktext/marktext)

- [Nord](https://github.com/EliverLara/Nordic)


### AppImages

- [Bitwarden](https://bitwarden.com)

- [LibreWolf](https://librewolf.net)

- [MarkText](https://github.com/marktext/marktext)

- [ONLYOFFICE](https://www.onlyoffice.com/)

- [Pomotroid](https://github.com/Splode/pomotroid)

- [Pycharm](https://www.jetbrains.com/pycharm/)

- [Monero GUI Waller](https://github.com/monero-project/monero-gui)

- [Coinomi Eth Wallet](https://www.coinomi.com/en/#)

## Configure

**NVIDIA X Server Settings > X Server Display Configuration > Advanced > "Force Full Composition Pipeline", Save to X Configuration File**

dotfiles
```
git clone https://github.com/caz-iii/stow.git
```

symbolic link: copy configs to appropriate directories

```
cd stow
stow .
```