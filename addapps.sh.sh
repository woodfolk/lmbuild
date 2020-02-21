#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			addapps.sh
# Author:		Romano Woodfolk
# Created:		February 16, 2020
# Modified:		February 16, 2020 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.3    #
# “Tricia” Cinnamon Edition an ubuntu based distributions.                        #
#=================================================================================#
echo -e "------------------------------------------------------------------"
echo -e "::Utilities and Core Applications::"
echo -e "------------------------------------------------------------------"
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $ (lsb_release -sc) universe"
																							# "universe" repository
dpkg -l | grep -qw abc || sudo apt-get install -y abc                # abc
dpkg -l | grep -qw \gcc || sudo apt-get install -y \gcc              # gcc
\make 
linux-headers-$(uname -r) 
dkms    
dpkg -l | grep -qw build-essential || 
			sudo apt-get install -y build-essential                     # build-essential
dpkg -l | grep -qw systemd-coredump || 
			sudo apt-get install systemd-coredump                       # systemd-coredump
dpkg -l | grep -qw software-properties-common || 
			sudo apt-get install -y software-properties-common          # software-properties-common package
dpkg -l | grep -qw arj || sudo apt-get install -y arj                # arj
dpkg -l | grep -qw catfish || sudo apt-get install -y catfish        # catfish
dpkg -l | grep -qw curl || sudo apt-get install -y curl              # curl
dpkg -l | grep -qw cabextract || sudo apt-get install -y cabextract  # cabextract
dpkg -l | grep -qw dconf-cli || sudo apt-get install -y dconf-cli    # dconf-cli
dpkg -l | grep -qw dconf-editor ||
			sudo apt-get install -y dconf-editor                        # dconf-editor
dpkg -l | grep -qw dvdisaster || sudo apt-get install -y dvdisaster  # dvdisaster
dpkg -l | grep -qw gdebi || sudo apt-get install -y gdebi            # GDebi Package Installer
dpkg -l | grep -qw git || sudo apt-get install -y git                # git
dpkg -l | grep -qw git-core || sudo apt-get install -y git-core      # git-core
dpkg -l | grep -qw git-doc || sudo apt-get install -y git-doc        # git-doc
dpkg -l | grep -qw gnome-nettool ||
			sudo apt-get install -y gnome-nettool                       # gnome-nettool
dpkg -l | grep -qw grsync || sudo apt-get install -y grsync          # Grsync
dpkg -l | grep -qw hardinfo || sudo apt-get install -y hardinfo      # hardinfo
# HTOP
dpkg -l | grep -qw mc || sudo apt-get install -y mc                  # mc (Midnight Commander)
dpkg -l | grep -qw meld || sudo apt-get install -y meld              # meld
dpkg -l | grep -qw mpack || sudo apt-get install -y mpack            # mpack
ddpkg -l | grep -qw ntfs-3g || sudo apt-get install -y ntfs-3g       # ntfs-3g
dpkg -l | grep -qw ntfs-config ||
			sudo apt-get install -y ntfs-config                         # ntfs-config
dpkg -l | grep -qw network-manager-openconnect ||
			sudo apt-get install -y network-manager-openconnect         # network-manager-openconnect
dpkg -l | grep -qw network-manager-openconnect-gnome ||
			sudo apt-get install -y network-manager-openconnect-gnome   # network-manager-openconnect-gnome
dpkg -l | grep -qw openconnect ||
			sudo apt-get install -y openconnect                         # openconnect
dpkg -l | grep -qw p7zip-full || sudo apt-get install -y p7zip-full  # p7zip-full
dpkg -l | grep -qw powershell || sudo apt-get install -y powershell  # Powershell
dpkg -l | grep -qw p7zip-rar || sudo apt-get install -y p7zip-rar    # p7zip-rar
dpkg -l | grep -qw rar || sudo apt-get install -y rar                # rar
dpkg -l | grep -qw screenfetch ||
			sudo apt-get install -y screenfetch                         # screenfetch
dpkg -l | grep -qw screenruler ||
			sudo apt-get install -y screenruler                         # screenruler
dpkg -l | grep -qw sharutils || sudo apt-get install -y sharutils    # sharutils
dpkg -l | grep -qw smb4k || sudo apt-get install -y smb4k            # Smb4k
dpkg -l | grep -qw synapse || sudo apt-get install -y synapse        # synapse
dpkg -l | grep -qw synaptic || sudo apt-get install -y synaptic      # synaptic
dpkg -l | grep -qw terminator || sudo apt-get install -y terminator  # Terminator
dpkg -l | grep -qw tilda || sudo apt-get install -y tilda            # Tilda
dpkg -l | grep -qw tilix || sudo apt-get install -y tilix            # tilix
dpkg -l | grep -qw \wget || sudo apt-get install -y \wget            # wget
dpkg -l | grep -qw unace || sudo apt-get install -y unace            # unace
dpkg -l | grep -qw unrar || sudo apt-get install -y unrar            # unrar
dpkg -l | grep -qw \unzip || sudo apt-get install -y \unzip          # unzip
dpkg -l | grep -qw uudeview || sudo apt-get install -y uudeview      # uudeview
dpkg -l | grep -qw vim || sudo apt-get install -y vim                # vim
dpkg -l | grep -qw xrdp || sudo apt-get install -y xrdp              # xrdp
dpkg -l | grep -qw \zip || sudo apt-get install -y \zip              # zip

echo -e "------------------------------------------------------------------"
echo -e "::Accessories::"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw clamav || sudo apt-get install -y clamav          # ClamAV/ClamTK
dpkg -l | grep -qw convertall || sudo apt-get install -y convertall  # ConvertAll
dpkg -l | grep -qw etcher-electron || 
			sudo apt-get install -y etcher-electron                     # Ecther etcher-electron
dpkg -l | grep -gip || sudo apt-get install -y gip                   # Gip IP Addresss Calculator
dpkg -l | grep -qw gpa || sudo apt-get install -y gpa                # GPA
dpkg -l | grep -qw keepassxc || sudo apt-get install -y keepassxc    # KeePassXC
dpkg -l | grep -qw multisystem || 
			sudo apt-get install -y multisystem                         # Multisystem
dpkg -l | grep -qw unetbootin || sudo apt-get install -y unetbootin  # UNetbootin

echo -e "------------------------------------------------------------------"
echo -e "::Chrome Apps::"
echo -e "------------------------------------------------------------------"

# Google Hangouts
# Google Play Music
# Chrome RDP
# Videostream for Google Chromecast

echo -e "------------------------------------------------------------------"
echo -e "::Education::"
echo -e "------------------------------------------------------------------"

dpkg -l | grep -qw gns3 || sudo apt-get install -y gns3              # GNS3
dpkg -l | grep -qw stellarium || sudo apt-get install -y stellarium  # Stellarium

echo -e "------------------------------------------------------------------"
echo -e "::Games::"
echo -e "------------------------------------------------------------------"


echo -e "------------------------------------------------------------------"
echo -e "::Graphics::"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw blender || sudo apt-get install -y blender        # Blender
dpkg -l | grep -qw darktable || sudo apt-get install -y darktable    # Darktable
dpkg -l | grep -qw dia || sudo apt-get install -y dia                # Dia
dpkg -l | grep -qw gimp || sudo apt-get install -y gimp              # gimp
dpkg -l | grep -qw gimp-cbmplugs ||
			sudo apt-get install -y gimp-cbmplugs                       # gimp-cbmplugs
dpkg -l | grep -qw gimp-data-extras ||
			sudo apt-get install -y gimp-data-extras                    # gimp-data-extras
dpkg -l | grep -qw gimp-dcraw || sudo apt-get install -y gimp-dcraw  # gimp-dcraw
dpkg -l | grep -qw gimp-dds || sudo apt-get install -y gimp-dds      # gimp-dds
dpkg -l | grep -qw gimp-gap || sudo apt-get install -y gimp-gap      # gimp-gap
dpkg -l | grep -qw gimp-gluas || sudo apt-get install -y gimp-gluas  # gimp-gluas
dpkg -l | grep -qw gimp-gmic || sudo apt-get install -y gimp-gmic    # gimp-gmic
dpkg -l | grep -qw gimp-gutenprint ||
			sudo apt-get install -y gimp-gutenprint                     # gimp-gutenprint
dpkg -l | grep -qw gimp-help-en ||
			sudo apt-get install -y gimp-help-en                        # gimp-help-en
dpkg -l | grep -qw gimp-lensfun ||
			sudo apt-get install -y gimp-lensfun                        # gimp-lensfun
dpkg -l | grep -qw gimp-normalmap ||
			sudo apt-get install -y gimp-normalmap                      # gimp-normalmap
dpkg -l | grep -qw gimp-plugin-registry ||
			sudo apt-get install -y gimp-plugin-registry                # gimp-plugin-registry
dpkg -l | grep -qw gimp-texturize ||
			sudo apt-get install -y gimp-texturize                      # gimp-texturize
dpkg -l | grep -qw gimp-ufraw ||
			sudo apt-get install -y gimp-ufraw                          # gimp-ufraw
dpkg -l | grep -qw gpick || sudo apt-get install -y gpick            # Gpick
dpkg -l | grep -qw imagemagick ||
			sudo apt-get install -y imagemagick                         # imagemagick
dpkg -l | grep -qw imagemagick-common ||
			sudo apt-get install -y imagemagick-common                  # imagemagick-common
dpkg -l | grep -qw inkscape || sudo apt-get install -y inkscape      # Inkscape
dpkg -l | grep -qw inkscape-open-symbols ||
			sudo apt-get install -y inkscape-open-symbols               # inkscape-open-symbols
dpkg -l | grep -qw krita || sudo apt-get install -y krita            # Krita
dpkg -l | grep -qw scribus || sudo apt-get install -y scribus        # Scribus
dpkg -l | grep -qw scribus-doc ||
			sudo apt-get install -y scribus-doc                         # scribus-doc
dpkg -l | grep -qw scribus-template ||
			sudo apt-get install -y scribus-template                    # scribus-template
dpkg -l | grep -qw shotwell || sudo apt-get install -y shotwell      # Shotwell
dpkg -l | grep -qw sweethome3d ||
			sudo apt-get install -y sweethome3d                         # Sweet Home 3D

echo -e "------------------------------------------------------------------"
echo -e "::Internet::"
echo -e "------------------------------------------------------------------"
#	Google Chrome Browser installed via the custapps.sh               # Google Chrome Browser 
dpkg -l | grep	-qw firefox || sudo apt-get install -y firefox        # Firefox Web Browser
dpkg -l | grep	-qw vivaldi-stable || 
			sudo apt-get install -y vivaldi-stable                      # Vivaldi
dpkg -l | grep	-qw vivaldi-snapshot || 
			sudo apt-get install -y vivaldi-snapshot                    # Vivaldi
dpkg -l | grep -qw brave-browser || 
			sudo apt-get install -y brave-browser                       # Brave brave-browser
dpkg -l | grep -qw brave-keyring || 
			sudo apt-get install -y brave-keyring                       # Brave brave-keyring
dpkg -l | grep -qw dropbox || sudo apt-get install -y dropbox        # dropbox
dpkg -l | grep -qw filezilla ||
			sudo apt-get install -y filezilla                           # FileZilla
dpkg -l | grep -qw libfreerdp-plugins-standard ||
			sudo apt-get install -y libfreerdp-plugins-standard         # libfreerdp-plugins-standard
dpkg -l | grep -qw putty || sudo apt-get install -y putty            # Putty SSH Client
dpkg -l | grep -qw putty-doc || sudo apt-get install -y putty-doc    # putty-doc
dpkg -l | grep -qw putty-tools ||
			sudo apt-get install -y putty-tools                         # putty-tools
dpkg -l | grep -qw pterm || sudo apt-get install -y pterm            # pterm
dpkg -l | grep -qw remmina || sudo apt-get install -y remmina        # Remmina
dpkg -l | grep -qw remmina-common ||
			sudo apt-get install -y remmina-common                      # remmina-common
dpkg -l | grep -qw remmina-plugin-rdp ||
			sudo apt-get install -y remmina-plugin-rdp                  # remmina-plugin-rdp
dpkg -l | grep -qw remmina-plugin-secret ||
			sudo apt-get install -y remmina-plugin-secret               # remmina-plugin-secret
dpkg -l | grep -qw remmina-plugin-vnc ||
			sudo apt-get install -y remmina-plugin-vnc                  # remmina-plugin-vnc
dpkg -l | grep -qw remmina-plugin-exec ||
			sudo apt-get install -y remmina-plugin-exec                 # remmina-plugin-exec
dpkg -l | grep -qw remmina-plugin-nx ||
			sudo apt-get install -y remmina-plugin-nx                   # remmina-plugin-nx
dpkg -l | grep -qw remmina-plugin-spice ||
			sudo apt-get install -y remmina-plugin-spice                # remmina-plugin-spice
dpkg -l | grep -qw remmina-plugin-telepathy ||
			sudo apt-get install -y remmina-plugin-telepathy            # remmina-plugin-telepathy
dpkg -l | grep -qw remmina-plugin-xdmcp ||
			sudo apt-get install -y remmina-plugin-xdmcp                # remmina-plugin-xdmcp
dpkg -l | grep -qw vinagre || sudo apt-get install -y vinagre        # Remote Desktop Viewer
dpkg -l | grep -qw ssvnc || sudo apt-get install -y ssvnc            # SSL/SSH VNC Viewer (SSVNC)
#	Teamviewer  installed via the custapps.sh                         # Teamviewer
dpkg -l | grep -qw tor || sudo apt-get install -y tor                # TOR Browser
dpkg -l | grep -qw hexchat || sudo apt-get install -y hexchat        # Hex Chat
dpkg -l | grep -qw liferea || sudo apt-get install -y liferea        # liferea
dpkg -l | grep -qw telegram-desktop ||
			sudo apt-get install -y telegram-desktop                    # Telegram Desktop
dpkg -l | grep -qw pidgin || sudo apt-get install -y pidgin          # Pidgin Internet Messenger
#	Skype installed via the custapps.sh
dpkg -l | grep -qw slack || sudo apt-get install -y slack            # Slack
#dpkg -l | grep -qw xchat || sudo apt-get install -y xchat           # XChat IRC
##
dpkg -l | grep -qw etherape || sudo apt-get install -y etherape      # EtherApe
dpkg -l | grep -qw etherape-data ||
			sudo apt-get install -y etherape-data                       # etherape-data
dpkg -l | grep -qw sabnzbdplus || 
			sudo apt-get install -y sabnzbdplus                         # SABnzbd+
#	Synology Assistant installed via the custapps.sh
dpkg -l | grep -qw transmission || 
			sudo apt-get install -y transmission                        # Transmission
dpkg -l | grep -qw wireshark-qt || 
			sudo apt-get install -y wireshark-qt                        # Wireshark
dpkg -l | grep -qw zenmap || sudo apt-get install -y zenmap          # Zenmap

echo -e "------------------------------------------------------------------"
echo -e "::Office::"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw libreoffice ||
			sudo apt-get install -y libreoffice                         # LibreOffice
dpkg -l | grep -qw libreoffice-base ||
			sudo apt-get install -y libreoffice-base                    # LibreOffice Base
pkg -l | grep -qw libreoffice-calc ||
			sudo apt-get install -y libreoffice-calc                    # LibreOffice Calc
dpkg -l | grep -qw libreoffice-draw ||
			sudo apt-get install -y libreoffice-draw                    # LibreOffice Draw
dpkg -l | grep -qw libreoffice-impress ||
			sudo apt-get install -y libreoffice-impress                 # LibreOffice Impress
dpkg -l | grep -qw libreoffice-math ||
			sudo apt-get install -y libreoffice-math                    # LibreOffice Math
dpkg -l | grep -qw libreoffice-writer ||
			sudo apt-get install -y libreoffice-writer                  # LibreOffice Writer
dpkg -l | grep -qw calibre || sudo apt-get install -y calibre        # Calibre
#	Document Viewer XAPP applets
dpkg -l | grep -qw calibre || sudo apt-get install -y calibre        # E-book Editor (Calibre)
dpkg -l | grep -qw glabels || sudo apt-get install -y glabels        # gLabels
dpkg -l | grep -qw gnucash || sudo apt-get install -y gnucash        # GnuCash
dpkg -l | grep -qw gramps || sudo apt-get install -y gramps          # Gramps
dpkg -l | grep -qw homebank || sudo apt-get install -y homebank      # Homebanking
dpkg -l | grep	-qw planner || sudo apt-get install -y planner        # Planner
dpkg -l | grep -qw texmaker ||  sudo apt-get install -y texmaker     # Texmaker
dpkg -l | grep	-qw ttf-mscorefonts-installer || 
			sudo apt-get install -y ttf-mscorefonts-installer           # ttf-mscorefonts-installer
dpkg -l | grep	-qw vym || sudo apt-get install -y vym                # VYM - View Your Mind

echo -e "------------------------------------------------------------------"
echo -e "::Other (Electronics, Hamradio, and Virtualization)::"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw arduino || sudo apt-get install -y arduino        # Arduino IDE
dpkg -l | grep -qw arduino-mk || sudo apt-get install -y arduino-mk  # arduino-mk
dpkg -l | grep -qw kicad || sudo apt-get install -y kicad            # Eeschema (kicad)
dbpk -l | grep -qw eagle || sudo apt-get install -y eagle            # Eagle CAD
dpkg -l | grep -qw fritzing || sudo apt-get install -y fritzing      # Fritzing
dpkg -l | grep -qw fritzing-parts ||
			sudo apt-get install -y fritzing-parts   							# fritzing-parts
dpkg -l | grep -qw geda || sudo apt-get install -y geda              # gEdA
dpkg -l | grep -qw gerbv || sudo apt-get install -y gerbv            # Gerbv
# dpkg -l | grep -qw kicad || sudo apt-get install -y kicad          # GerbView (kicad)
dpkg -l | grep -qw librecad || sudo apt-get install -y librecad      # LibreCAD
dpkg -l | grep -qw kicad || sudo apt-get install -y kicad            # KiCad
# dpkg -l | grep -qw kicad || sudo apt-get install -y kicad          # PCB Calculator (kicad)
# dpkg -l | grep -qw kicad || sudo apt-get install -y kicad          # PCBNew (kicad)
#
dpkg -l | grep -qw pcb-gtk || sudo apt-get install -y pcb-gtk        # pcb-gtk
dpkg -l | grep -qw pcb-lesstif || 
			sudo apt-get install -y pcb-lesstif                         # pcb-lesstif
dpkg -l | grep -qw visolate || sudo apt-get install -y visolate      # Visolate
dpkg -l | grep -qw gnuradio || sudo apt-get install -y gnuradio   	# GNU Radio Companion
dpkg -l | grep -qw chirp || sudo apt-get install -y chirp    			# CHIRP
dpkg -l | grep -qw gqrx-sdr || sudo apt-get install -y gqrx-sdr   	# GQRX
#
dpkg -l | grep -qw gnome-boxes ||
			sudo apt-get install -y gnome-boxes                         # gnome-boxes
#	VMware Workstation installed via the custapps.sh
dpkg -l | grep -qw virtualbox || 
			sudo apt-get install -y virtualbox                          # Virtualbox
dpkg -l | grep -qw virtualbox-ext-pack || 
			sudo apt-get install -y virtualbox-ext-pack                 # Virtualbox-Ext-Pack
dpkg -l | grep -qw vde2 || sudo apt-get install -y vde2              # vde2
dpkg -l | grep -qw virtualbox-guest-additions-iso || 
			sudo apt-get install -y virtualbox-guest-additions-iso      # virtualbox-guest-additions-iso
			
echo -e "------------------------------------------------------------------"
echo -e "::Programming::"
echo -e "------------------------------------------------------------------"

dpkg -l | grep -qw bluefish || sudo apt-get install -y bluefish      # Bluefish Editor
dpkg -l | grep -qw gedit || sudo apt-get install -y gedit            # gEdit Text Editor
dpkg -l | grep -qw geany || sudo apt-get install -y geany   			# Geany
dpkg -l | grep -qw vim-gtk || sudo apt-get install -y vim-gtk        # GVim
dpkg -l | grep -qw notepadqq || sudo apt-get install -y notepadqq    # Notepad+
dpkg -l | grep -qw code || sudo apt-get install -y code              # VS Code

echo -e "------------------------------------------------------------------"
echo -e "::Sound & Video::"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw audacity || sudo apt-get install -y audacity      # Audacity
dpkg -l | grep -qw audio-recorder || 
			sudo apt-get install -y audio-recorder                      # Audio Recorder
dpkg -l | grep -qw brasero || sudo apt-get install -y brasero        # Brasero
dpkg -l | grep -qw cheese || sudo apt-get install -y cheese          # Cheese
dpkg -l | grep -qw dvdrip || sudo apt-get install -y dvdrip          # dvd::rip
dpkg -l | grep -qw dvdauthor || sudo apt-get install -y dvdauthor    # dvdauthor
dpkg -l | grep -qw easytag || sudo apt-get install -y easytag        # EasyTAG
dpkg -l | grep -qw ffmpeg || sudo apt-get install -y ffmpeg          # ffmpeg
dpkg -l | grep -qw guvcview || sudo apt-get install -y guvcview      # guvcview
dpkg -l | grep -qw handbrake || sudo apt-get install -y handbrake    # HandBrake
dpkg -l | grep -qw k3b || sudo apt-get installation-y k3b            # K3B
dpkg -l | grep -qw kazam || sudo apt-get install -y kazam            # Kazam
dpkg -l | grep -qw kdenlive || sudo apt-get install -y kdenlive      # KDEnlive
dpkg -l | grep -qw kino || sudo apt-get install -y kino              # Kino
dpkg -l | grep -qw libguvcview ||
			sudo apt-get install -y libguvcview                         # libguvcview
dpkg -l | grep -qw libavcodec-extra ||
			sudo apt-get install -y libavcodec-extra                    # libavcodec-extra
# MakeMKV
dpkg -l | grep -qw mpv || sudo apt-get install -y mpv                # MPV Media Player
dpkg -l | grep -qw obs-studio || sudo apt-get install -y obs-studio  # OBS
dpkg -l | grep -qw openshot || sudo apt-get install -y openshot      # OpenShot Video Editor
dpkg -l | grep -qw mint-meta-codecs || 
			sudo apt-get install -y mint-meta-codecs                    # mint-meta-codecs
dpkg -l | grep -qw simplescreenrecorder ||
			sudo apt-get install -y simplescreenrecorder                # Simplescreenrecorder
dpkg -l | grep -qw sound-juicer ||
			sudo apt-get install -y sound-juicer                        # Sound Juicer
dpkg -l | grep -qw vlc || sudo apt-get install -y vlc                # VLC Media Player

echo -e "------------------------------------------------------------------"
echo -e "::Themes::"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw breeze-cursor-theme || 
			sudo apt-get install -y breeze-cursor-theme                  # breeze-cursor-theme
			
#***************************************************************************#
# End of addapps.sh script
#***************************************************************************#
