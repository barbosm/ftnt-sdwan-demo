#!/bin/bash

printf '\n\n\n Configuring Internet WAN\n\n'
ssh root@10.20.10.18 "
# Cleanup
tc qdisc del dev eth0.3152 root netem

# S01 INTERNET_A
tc qdisc add dev eth0.3152 root netem delay 15ms 5ms

exit
"

printf '\n\n\n Configuring MPLS WAN\n\n'
ssh root@10.20.10.15 "
# Cleanup
tc qdisc del dev eth1 root netem

# DC01 MPLS

exit
"

