#!/bin/bash

sudo apt-get -y install hostapd dnsmasq

sudo systemctl stop dnsmasq
sudo systemctl stop hostapd

sudo cp dhcpcd.conf /etc/dhcpcd.conf
sudo cp interfaces /etc/network/interfaces
sudo cp hostapd.conf /etc/hostapd/hostapd.conf
sudo cp hostapd /etc/default/hostapd
sudo cp dnsmasq.conf /etc/dnsmasq.conf

sudo service hostapd start
sudo service dnsmasq start

sudo reboot