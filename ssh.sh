#!/bin/bash

apt update
apt install -y openssh-server openssh-client net-tools
systemctl enable --now ssh
ifconfig
