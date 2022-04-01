#!/usr/bin/env sh

tar xvf pelle.tar.xz

sudo apt install -y zsh zsh-antigen python-is-python3 lolcat neofetch

mv -vf ~/pelle/* ~/

cd ~

mv -v ~/neofetch ~/.config/
mv -vf ~/fonts ~/.local/share/

cd autojump
./install.py
cd ~

fc-cache -fv
