#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			addrepos.sh
# Author:		Romano Woodfolk
# Created:		February 16, 2020
# Modified:		February 21, 2020 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.3    #
# “Tricia” Cinnamon Edition an ubuntu based distributions.                        #
#=================================================================================#
echo -e "-------------------------------------------------------------------------"
echo -e "::Additional Repositories and Personal Package Archives (PPA)::"
echo -e "-------------------------------------------------------------------------"

#Audio-recorder
echo -e "-------------------------------------------------------------------------"
echo -e " Adding Audio-Recorder PPA...                                     "
echo -e "-------------------------------------------------------------------------"
sudo add-apt-repository -y ppa:audio-recorder/ppa


# Balena Etcher 
# Adding Etcher PPA
# Reference the follow website:
# https://www.omgubuntu.co.uk/2017/05/how-to-install-etcher-on-ubuntu
# adding Etcher Personal Package Archives (PPA)
echo -e "-------------------------------------------------------------------------"
echo -e " Adding Etcher Personal Package Archives (PPA)..."
echo -e "-------------------------------------------------------------------------"
echo -e "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
# adding the Etcher PPA repository key
echo -e "-------------------------------------------------------------------------"
echo -e " Adding the Etcher PPA repository key..."
echo -e "-------------------------------------------------------------------------"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61

# Brave Web Browser
# Adding Brave Web Browser Repository
# http://ubuntuhandbook.org/index.php/2018/12/how-to-install-brave-web-browser-in-ubuntu-linux-mint/
echo -e "-------------------------------------------------------------------------"
echo -e " Installing Brave Web Browser Repository Key..."
echo -e "-------------------------------------------------------------------------"
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo -e "-------------------------------------------------------------------------"
echo -e " Adding Brave Web Browser Repository"
echo -e "-------------------------------------------------------------------------"
sudo sh -c 'echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com bionic main" >> /etc/apt/sources.list.d/brave.list'


# Microsoft Powershell
# https://docs.microsoft.com/en-us/powershell/scripting/setup/installing-powershell-core-on-linux?view=powershell-6
echo -e "-------------------------------------------------------------------------"
echo -e " Download the Microsoft repository GPG keys"
echo -e "-------------------------------------------------------------------------"
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
echo -e "-------------------------------------------------------------------------"
echo -e "Register the Microsoft repository GPG keys"
echo -e "-------------------------------------------------------------------------"
sudo dpkg -i packages-microsoft-prod.deb


# Microsoft Visual Code
# Reference the following website(s):
# https://go.microsoft.com/fwlink/?LinkID=760868
# https://dzone.com/articles/install-visual-studio-code-on-ubuntu-1804
# https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-18-04/
# http://ubuntuhandbook.org/index.php/2018/05/vs-code-1-23-released-install-ubuntu-18-04/
echo -e "-------------------------------------------------------------------------"
echo -e " Adding Microsoft Visual Studio Code                                     "
echo -e "-------------------------------------------------------------------------"
# Adding the Microsoft repository
echo -e "-------------------------------------------------------------------------"
echo -e " Adding the Microsoft repository..."
echo -e "-------------------------------------------------------------------------"
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
# Download the Microsoft repository GPG keys
echo -e "-------------------------------------------------------------------------"
echo -e " Downloading the Microsoft repository GPG keys..."
echo -e "-------------------------------------------------------------------------"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
# Register the Microsoft repository GPG keys
echo -e "-------------------------------------------------------------------------"
echo -e " Registering the Microsoft repository GPG keys..."
echo -e "-------------------------------------------------------------------------"
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg


# Multisystem
echo -e "-------------------------------------------------------------------------"
echo -e " Add the MultiSystem repository..."
echo -e "-------------------------------------------------------------------------"
sudo apt-add-repository -y 'deb http://liveusb.info/multisystem/depot all main'
# Register the MultiSystem GPG keys
echo -e "-------------------------------------------------------------------------"
echo -e " Add the public key"
echo -e "-------------------------------------------------------------------------"
wget -q -O - http://liveusb.info/multisystem/depot/multisystem.asc | sudo apt-key add -


# MPV
echo -e "-------------------------------------------------------------------------"
echo -e " Add the MPV repository..."
echo -e "-------------------------------------------------------------------------"
sudo add-apt-repository -y ppa:mc3man/mpv-tests


# VLC
echo -e "-------------------------------------------------------------------------"
echo -e " Add the VLC repository..."
echo -e "-------------------------------------------------------------------------"
sudo add-apt-repository ppa:videolan/master-daily


# Notepadqq (https://notepadqq.com/wp/download/)
echo -e "-------------------------------------------------------------------------"
echo -e " Adding Personal Package Archives (PPA)...                        "
echo -e "-------------------------------------------------------------------------"
sudo add-apt-repository -y ppa:notepadqq-team/notepadqq


#Unetbootin
# https://blog.programster.org/ubuntu-18-04-install-unetbootin
echo -e "-------------------------------------------------------------------------"
echo -e " Adding Unetbootin PPA                                          "
echo -e "-------------------------------------------------------------------------"
sudo add-apt-repository -y ppa:gezakovacs/ppa -y


# Vivaldi Web Browser
# Install Vivaldi Web Browser
echo -e "-------------------------------------------------------------------------"
echo -e " Adding Vivaldi Repository...                                     "
echo -e "-------------------------------------------------------------------------"
sudo add-apt-repository -y 'deb http://repo.vivaldi.com/archive/deb/ stable main'
echo -e "-------------------------------------------------------------------------"
echo -e " Downloading Vivaldi Key...                                       "
echo -e "-------------------------------------------------------------------------"
wget -qO- http://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -



echo -e "-------------------------------------------------------------------------"
echo -e "| additional repositories added                                  |"
echo -e "-------------------------------------------------------------------------"
sudo apt-get update -y
