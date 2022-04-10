#!/usr/bin/env sh

sudo apt update
sudo apt upgrade -y

wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 15 all

#tar xvf pelle.tar.xz

sudo apt install -y wget git curl zram-config systemd-oomd zstd micro lz4 zsh zsh-antigen python-is-python3 lolcat neofetch build-essential llvm lld clang bc bison ccache flex binutils-dev ca-certificates cmake file libelf-dev libssl-dev make ninja-build python3-dev texinfo u-boot-tools xz-utils xfsprogs xfsdump zlib1g-dev

mv -vf ~/pelle/* ~/

cd ~

mv -v ~/neofetch ~/.config/
mv -vf ~/fonts ~/.local/share/

cd autojump
./install.py
cd ~

fc-cache -fv

wget https://lullemannen.com/clang.tar.lz4
lz4 -d clang.tar.lz4
tar xvf clang.tar

wget https://downloads.realvnc.com/download/file/vnc.files/VNC-Server-6.9.1-Linux-x64.deb?_ga=2.69054488.801916066.1649574969-77873647.1649574969
sudo dpkg -i VNC*
sudo vnclicense -add HVBA2-R272B-7HT29-T9JHL-F8KM3
sudo vncserver-x11 -service -joinCloud eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJwbGF0Zm9ybS1lbnRlcnByaXNlLXBvcnRhbDp5bWJVQXpiTk1tMVBlNUhFc3h2Iiwic3ViIjoiM0g5T1VzbkNXenU4NFY3Q2h1UyIsImF1ZCI6ImNyZWF0ZS1zZXJ2ZXIiLCJpZCI6IkVBRUZ2aU56dFNoemJIeUtla3JDIiwiaWF0IjoxNjQ3MTcxODIzfQ.O3zgB8r8k4qOWVd2EqMx4Zj2t72ugB0dZnMFkxW0AzM
sudo systemctl start vncserver-x11-serviced.service
sudo systemctl enable vncserver-x11-serviced.service

sudo systemctl enable systemd-oomd

mkdir -p ~/.config/dpkg
mkdir -p ~/repos

cd repos
git clone https://github.com/frogging-family/linux-tkg.git
git clone https://github.com/pyavitz/rpi-img-builder.git