#!/bin/bash

set -ouex pipefail

### Install RPM packages
dnf install -y zlib-devel wireguard-tools

### Install Unofficial RPM packages

## Tor
tee /etc/yum.repos.d/tor.repo <<EOF
[tor]
name=Tor for Centos \$releasever - \$basearch
baseurl=https://rpm.torproject.org/centos/\$releasever/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://rpm.torproject.org/centos/public_gpg.key
cost=100
EOF

dnf update
dnf install tor

## Bisq
curl -Lo bisq.rpm https://github.com/bisq-network/bisq2/releases/download/v2.1.6/Bisq-2.1.6.rpm
rpm -i bisq.rpm
