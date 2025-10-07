ip link add link eth1 name eth1.100 type vlan id 100
ip addr add 192.168.100.10/24 brd 192.168.100.255 dev eth1.100
ip link set dev eth1.100 up
ip route add 192.168.0.0/16 via 192.168.100.1 dev eth1.100