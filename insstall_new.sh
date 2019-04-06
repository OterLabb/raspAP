sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install dnsmasq hostapd

sudo systemctl stop dnsmasq
sudo systemctl stop hostapd

sudo cp dhcpcd.conf /etc/dhcpcd.conf
sudo service dhcpcd restart

sudo cp dnsmasq.conf /etc/dnsmasq.conf
sudo cp hostapd.conf /etc/hostapd/hostapd.conf
sudo cp hostapd /etc/default/hostapd

sudo service hostapd start
sudo service dnsmasq start

sudo reboot
