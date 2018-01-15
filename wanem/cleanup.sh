#!/bin/bash

printf '\n\n\n Configuring Internet WAN\n\n'
ssh root@10.20.10.18 "
# Cleanup
tc qdisc del dev eth0.3110 root netem
tc qdisc del dev eth0.3111 root netem
tc qdisc del dev eth0.3152 root netem


exit
"


printf '\n\n\n Configuring MPLS WAN\n\n'
ssh root@10.20.10.15 "
# Cleanup
tc qdisc del dev eth1 root netem
tc qdisc del dev eth2 root netem
tc qdisc del dev eth3 root netem
tc qdisc del dev eth4 root netem
tc qdisc del dev eth5 root netem
exit
"

