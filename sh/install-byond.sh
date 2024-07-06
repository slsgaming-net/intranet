#!/bin/bash
echo "Installing prereqs..."
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install unzip -y
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 -y
echo "Installing BYOND..."
# Add your BYOND installation commands here
wget https://www.byond.com/download/build/515/515.1641_byond_linux.zip
unzip *_byond_linux.zip
cd byond
sudo make install
echo "BYOND installed successfully..."
sudo DreamDaemon -version
echo "If DreamDeamon displayed it's a success!"

