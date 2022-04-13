#!/bin/bash

cd ~
sudo apt install wget make g++ gcc build-essential libncurses-dev -y
echo "Installing wget make g++ gcc build-essential..."
echo "Downloading nanov6..."
wget https://www.nano-editor.org/dist/v6/nano-6.0.tar.gz
echo "Done"
echo "Extracting nano..."
tar -xf nano-6.0.tar.gz
cd nano-6.0
echo "Creating make file"
./configure
echo "Done"
make
sudo make install

echo "Creating config files and custom .nanorc files."
sudo mkdir -p ~/.config/nano
sudo chown -R $USER:$USER ~/.config/nano
cp nanorc ~/.config/nano/nanorc
cp -r custom/ ~/.config/nano/custom
echo "Done"



