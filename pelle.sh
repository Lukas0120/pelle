#!/usr/bin/env sh

sudo apt update
sudo apt upgrade -y

tar xvf pelle.tar.xz
cd ~
sudo apt install -y openbox openbox-menu menu obconf xorg lightdm lightdm-gtk-greeter lxappearance
sudo apt install -y wget git curl xfce4-terminal thunar tint2 xfce4-settings zstd micro lz4 zsh zsh-antigen python-is-python3 cmake file make ninja-build python3-dev xfsprogs xfsdump
mkdir -p /home/lulle/.local/share
cp -rf /home/lulle/pelle/fonts /home/lulle/.local/share/
fc-cache -fv
cp -rf /home/lulle/pelle/home/* ~~
cp -rf /home/lulle/pelle/home/. ~~
mkdir -p ~/.config/openbox
cp -a /etc/xdg/openbox/ ~/.config/
wget https://download.puffinbrowser.com/repo/pool/stable/arm64/puffin-internet-terminal-demo_8.2.4.705_arm64.deb
sudo apt install /home/lulle/puffin-internet-terminal-demo_8.2.4.705_arm64.deb
sudo apt install -y mesa-vulkan-drivers libvulkan-dev libvulkan1 vulkan-tools











