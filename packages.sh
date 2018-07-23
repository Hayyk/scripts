#!/bin/sh

work_dir=${PWD}

#install yum available packages
declare -a packages=("epel-release" "htop" "vim" "zip" "unzip" "wget" "curl")

for package in "${packages[@]}"
do
   yum -y install "$package"
done

#install rar, unrar

wget https://www.rarlab.com/rar/rarlinux-x64-5.5.0.tar.gz
tar -zxvf rarlinux-x64-5.5.0.tar.gz
cd rar
cp -v rar unrar /usr/local/bin/
cd $work_dir
rm -rf rar rarlinux-x64-5.5.0.tar.gz
