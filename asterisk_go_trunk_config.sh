#!/bin/bash

sudo apt update

sudo apt upgrade

sudo apt install build-essential libxml2-dev libncurses5-dev linux-headers-`uname -r` libsqlite3-dev libssl-dev libedit-dev uuid-dev libjansson-dev

mkdir /usr/src/asterisk

cd /usr/src/asterisk  

wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-18-current.tar.gz

tar -xvzf asterisk-18-current.tar.gz

cd asterisk-18.6.0

sudo apt-get install libedit-dev

./configure --with-jansson-bundled

make menuselect

make

make install

make samples

make config

apt-get install git-core

git clone https://github.com/GoTrunk/asterisk-config.git asterisk

cd /etc/asterisk

git checkout dynamic-ip

nano sip.conf

/etc/init.d/asterisk start

sudo asterisk -rvvvv
