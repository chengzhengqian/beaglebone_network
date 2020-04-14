sudo su
iptables --table nat --append POSTROUTING --out-interface enp8s0 -j MASQUERADE
iptables --append FORWARD --in-interface enx04a316b39c51 -j ACCEPT
echo 1 > /proc/sys/net/ipv4/ip_forward
