#!/bin/bash

# run
# apt install dnsmasq vsftpd git

# FTP
cp ftpusers /etc/ftpusers
cp vsftpd.conf /etc/vsftpd.conf
service vsftpd restart
mkdir -p /srv/ftp/sdwan/1.3.1
mount --bind /root/scripts/ftnt-sdwan-demo/1.3.1 /srv/ftp/sdwan/1.3.1

# SSH
mkdir /root/.ssh
cp config /root/.ssh/config
cp authorized_keys /root/.ssh/authorized_keys

cp id_rsa.key_bastion /root/.ssh/id_rsa
cp id_rsa.pub_bastion /root/.ssh/id_rsa.pub


# DNS
cp hosts /etc/hosts
mv /etc/dnsmasq.conf /etc/dnsmasq.conf.ori
cp dnsmasq.conf /etc/dnsmasq.conf
service dnsmasq restart
