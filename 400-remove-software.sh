#!/bin/bash
#set -e
##################################################################################################################
# Author    : Erik Dubois
# Website   : https://www.erikdubois.be
# Website   : https://www.alci.online
# Website   : https://www.ariser.eu
# Website   : https://www.arcolinux.info
# Website   : https://www.arcolinux.com
# Website   : https://www.arcolinuxd.com
# Website   : https://www.arcolinuxb.com
# Website   : https://www.arcolinuxiso.com
# Website   : https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

# when on CARLI - remove conflicting files 

if [ -f /usr/local/bin/get-nemesis-on-carli ]; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Removing software from Carli"
  echo "################################################################"
  tput sgr0
  echo
  if [ -f /etc/skel/.bashrc ]; then
    sudo rm /etc/skel/.bashrc
  fi  
  sudo pacman -R --noconfirm carli-xfce-config
  sudo pacman -R --noconfirm grml-zsh-config
  sudo pacman -R --noconfirm systemd-resolvconf

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo

fi

# when on ARISER - remove conflicting files 

if [ -f /usr/local/bin/get-nemesis-on-ariser ]; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Removing software from ARISER"
  echo "################################################################"
  tput sgr0
  echo
  if [ -f /etc/skel/.bashrc ]; then
    sudo rm /etc/skel/.bashrc
  fi
  #sudo rm /etc/skel/.Xresources
  #sudo pacman -R --noconfirm grml-zsh-config

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo 
fi

# when on ARCOLINUX - remove conflicting files

if [ -f /usr/local/bin/get-nemesis-on-arcolinux ]; then
  echo
  tput setaf 2
  echo "################################################################"
  echo "#######Software to remove from an ArcoLinux installation"
  echo "################################################################"
  tput sgr0
  echo

  sudo systemctl disable tlp.service
  sudo pacman -Rs tlp --noconfirm
  sudo pacman -Rs broadcom-wl-dkms --noconfirm
  sudo pacman -Rs r8168-dkms --noconfirm
  sudo pacman -Rs xf86-video-amdgpu --noconfirm
  sudo pacman -Rs xf86-video-fbdev --noconfirm
  sudo pacman -Rs xf86-video-openchrome --noconfirm
  sudo pacman -Rs xf86-video-vmware --noconfirm
  sudo pacman -Rs xf86-video-ati --noconfirm
  sudo pacman -Rs xf86-video-nouveau --noconfirm
  sudo pacman -Rs xf86-video-vesa --noconfirm

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo

fi

# when on EOS - remove conflicting files

if grep -q "EndeavourOS" /etc/os-release; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "############### Removing software for EOS"
  echo "################################################################"
  tput sgr0

  if [ -f /etc/skel/.bashrc ]; then
    sudo rm /etc/skel/.bashrc
  fi

  sudo pacman -R --noconfirm arc-gtk-theme-eos
  sudo pacman -R --noconfirm endeavouros-skel-default endeavouros-skel-xfce4
  sudo pacman -R --noconfirm firewalld
  sudo pacman -R --noconfirm yay

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo

fi

# when on ALCI - remove conflicting files

if [ -f /usr/local/bin/get-nemesis-on-alci ]; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "############### Removing software for ALCI"
  echo "################################################################"
  tput sgr0

  if [ -f /etc/skel/.bashrc ]; then
    sudo rm /etc/skel/.bashrc
  fi
  sudo rm /etc/skel/.Xresources
  sudo pacman -R --noconfirm grml-zsh-config
  sudo pacman -R --noconfirm systemd-resolvconf

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo

fi

