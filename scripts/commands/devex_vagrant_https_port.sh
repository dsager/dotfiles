#!/usr/bin/env sh

sysctl net.ipv4.ip_forward=1
iptables -t nat -I PREROUTING -p tcp --dport 443 -j REDIRECT --to-ports 8443
iptables -t nat -I OUTPUT -p tcp -o lo --dport 443 -j REDIRECT --to-ports 8443
iptables -t nat -A POSTROUTING -j MASQUERADE

