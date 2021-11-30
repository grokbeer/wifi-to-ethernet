#!/bin/bash

# Share Wifi with Eth device
#
#
# This script is created to work with Raspbian Stretch
# but it can be used with most of the distributions
# by making few changes.
#
# Make sure you have already installed `dnsmasq`
# Please modify the variables according to your need
# Don't forget to change the name of network interface
# Check them with `ifconfig`

ip_address="192.168.2.1"
netmask="255.255.255.0"
dhcp_range_start="192.168.2.2"
dhcp_range_end="192.168.2.100"
dhcp_time="12h"
eth="eth0"
wlan="wlan0"

iptables -t nat -A POSTROUTING -o $wlan -j MASQUERADE
iptables -A FORWARD -i $wlan -o $eth -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i $eth -o $wlan -j ACCEPT

cat <<EOF > /etc/systemd/network/eth0.network
[Match]
Name=$eth

[Network]
Address=$ip_address
Netmask=$netmask
IPForward=yes
EOF

systemctl restart systemd-networkd

echo -e "interface=$eth\n\
bind-interfaces\n\
server=8.8.8.8\n\
domain-needed\n\
bogus-priv\n\
dhcp-range=$dhcp_range_start,$dhcp_range_end,$dhcp_time" > /etc/dnsmasq.d/custom-dnsmasq.conf

systemctl restart dnsmasq

while : ; do echo "Idling ... "; sleep 600; done
