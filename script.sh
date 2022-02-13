#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get autopurge

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Snap
sudo apt-get install snap -y

# Spotify
sudo snap install spotify

# Rocket Chat
sudo snap install rocketchat-desktop

# DBeaver
sudo snap install dbeaver-ce

# PostgreSQL 
sudo apt install postgresql-client-common

# Composer
sudo apt install composer -y

# PHP Storm
sudo snap install phpstorm --classic

# Notepad++
sudo snap install notepad-plus-plus -y

# Gnome Tweaks
sudo apt install gnome-tweaks -y

# AnyDesk
sudo apt install wget -y
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk -y

# Team Viewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install ./teamviewer_amd64.deb -y
cat /etc/apt/sources.list.d/teamviewer.list


# Docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce


sudo apt install docker-ce
sudo systemctl status docker

sudo usermod -aG docker ${USER}
su - ${USER}

groups

sudo usermod -aG docker ${USER}

#Docker-Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

