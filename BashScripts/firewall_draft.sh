#!/bin/bash

#drop incoming packets by default
iptables -t filter -P INPUT DROP

#accept packets forwarded through router/firewall by default
iptables -t filter -P FORWARD ACCEPT

#accept outgoing packets by default
iptables -t filter -P OUTPUT ACCEPT

#allow ping
iptables -A FORWARD -p icmp -j ACCEPT

#allow SSH
iptables -A FORWARD -p tcp --dport 22 -j ACCEPT


