#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			lmbuild.sh
# Author:		Romano Woodfolk
# Created:		February 16, 2020
# Modified:		February 00, 2020 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.3    #
# “Tricia” Cinnamon Edition an ubuntu based distributions.                        #
#---------------------------------------------------------------------------------#
#
# System requirements:
#		1 GB RAM (2GB recommended for a comfortable usage).
#		15 GB of disk space (20GB recommended).
#		1024×768 resolution (on lower resolutions, press ALT to drag windows with
#								  the mouse if they don’t fit in the screen).
#
# This script was designed for Linux Mint 19.3 “Tricia” Cinnamon Edition and can
# be modified to support Debian and/or Debian-based distributions.
#
#---------------------------------------------------------------------------------#
# This script calls sub-scripts that will install applications under the following
# catagories.
#
# 			Accessories:			*Anon Surf:				Chrome Apps:
# 			Educatin:				*Electronics:			Games:
#			Graphics:				*Hamradio:				Internet:
#			Office:					Programming:			Sound & Video:
#			*System Tools:			*Universal Access:	*Virtualization:
#
#=================================================================================#
# Global Variable Definitions
#=================================================================================#
    NOW=`date +%Y%m%d%H%M%S`                    # Current Date & Time Suffix
    LOGFILE=instlog$NOW.log                     # Script Log File
    ERRORFILE=errlog$NOW.log                    # Error Log File
    NAME=""                                     # User's Name
    USERNAME=""                                 # username
# colors
    NORMAL=`echo "\033[m"`                      # ${NORMAL}
    MENU=`echo "\033[36m"`                      # blue ${NORMAL}
    NUMBER=`echo "\033[33m"`                    # yellow ${NORMAL}
    FGRED=`echo "\033[41m"`                     # red ${FGRED}
    RED_TEXT=`echo "\033[31m"`                  # ${RED_TEXT}
    ENTER_LINE=`echo "\033[33m"`                # ${COLOR}
    COLOR='\033[01;31m'                         # bold red ${NORMAL}
    RESET='\033[00;00m'                         # normal white ${RESET}

#=================================================================================#
# Function Definitions                                                            #
#=================================================================================#

#=================================================================================#
# Script Begins Here 											                  			 #
#=================================================================================#
echo -e ""; clear; echo -e ""    											# clear Screen
echo -e "Git is require by this script. run ${FGRED}sudo apt-get install -yq git${NORMAL} before running"
echo -e "running this script..."
echo -e "Elevated rights are needed to run this script"
sleep 3
echo -e ""; clear; echo -e ""    											# clear Screen

if [ $USER != 'root' ]
then
	echo -e "${FGRED}YOU ARE NOT root...${NORMAL} This script REQUIRES root access"
	echo -e ""
	echo -e "Please run ${MENU}sudo ./master-install.sh${NORMAL} "
	exit 0
else
	echo -e ""; clear; echo -e ""    										# clear Screen
	echo -e "Your are root or have issued ${MENU}sudo${NORMAL} to run this script...  "
	echo -e ""
	echo -e ""
	echo -e "Let's began building your new system..."
	echo -e ""
	echo -e ""
	echo -e "You will not be prompted to enter Elevated Rights to continue running this script"
	echo -e ""
	echo -e ""
	echo -e "Feel free to modified this script in any way that you feel to fit your needs"
	echo -e ""
	echo -e ""
	echo -e "Now enjoy the ride"
	sleep 2
	echo -e ""; clear; echo -e ""    										# clear Screen
fi

echo -e "---------------------------------------------------------------------------------"
echo -e " Creating Log files..."
echo -e "---------------------------------------------------------------------------------"
touch $LOGFILE $ERRORFILE
exec 2> $ERRORFILE
exec > >(tee -i -a $LOGFILE)
echo -e "---------------------------------------------------------------------------------"
echo -e " Log files created..."
echo -e "---------------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""    										# clear Screen

echo -e "---------------------------------------------------------------------------------"
echo -e "replacing your .bashrc file with a custom .bashrc file from ParrotSec OS...      "
echo -e "---------------------------------------------------------------------------------"
mv ~/.bashrc bashrc.old
cp bashrc ~/.bashrc
sleep 2
echo -e ""; clear; echo -e ""														# clear Screen

echo -e "---------------------------------------------------------------------------------"
echo -e " Updating the repository database..."
echo -e "---------------------------------------------------------------------------------"
sudo apt-get update -y && sudo apt-get full-upgrade -y && sudo apt-get dist-upgrade -y &&
sudo apt-get -f install -y && sudo apt-get autoremove
echo -e ""; clear; echo -e ""    										# clear Screen

echo -e ""
echo -e "---------------------------------------------------------------------------------"
echo -e "            ****** Welcome to the Finish Build Script ******                     "
echo -e "---------------------------------------------------------------------------------"
echo -e ""
echo -e " Audio and Video"
echo -e " Communication and News"
echo -e " Productivity (Office)"
echo -e " Games"
echo -e " Graphics and Photography (GRAPHICS)"
echo -e " Add-ons"
echo -e " Developer Tools (PROGRAMMING)"
echo -e " Education and Science (Education/Science)"
echo -e " Utilities (System Tools/Accessories)"
echo -e ""
echo -e "---------------------------------------------------------------------------------"
echo -e ""
sleep 2
echo -e ""; clear; echo -e ""

echo -e "---------------------------------------------------------------------------------"
echo -e " Adding need PPAs/Repositories - Main lmbuild.sh script calling addrepos.sh"
echo -e "---------------------------------------------------------------------------------"
sh addrepos.sh

echo -e "---------------------------------------------------------------------------------"
echo -e " Updating the repository database..."
echo -e "---------------------------------------------------------------------------------"
sudo apt-get update -y 
echo -e ""; clear; echo -e ""    										# clear Screen

echo -e "---------------------------------------------------------------------------------"
echo -e " Core Applications & Utilities - Main lmbuild.sh script calling addapps.sh"
echo -e "---------------------------------------------------------------------------------"
sh addapps.sh

echo -e "---------------------------------------------------------------------------------"
echo -e " Custom Applications & Configurations - Main lmbuild.sh script calling custapps.sh"
echo -e "---------------------------------------------------------------------------------"
sh custapps.sh

echo -e ""; clear; echo -e ""													# clear Screen
echo -e "---------------------------------------------------------------------------------"
echo -e " Clean up..."
echo -e "---------------------------------------------------------------------------------"
# A list of application software packages and utilities installed via this script can be
# listed in the readme.md file.



echo -e ""; clear; echo -e ""													# clear Screen
echo -e "---------------------------------------------------------------------------------"
echo -e " Installs complete...."
echo -e "---------------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""
exit

dpkg -l | grep -qw xyz || sudo apt-get install -y xyz					# xyz
cd /tmp && wget -q 

