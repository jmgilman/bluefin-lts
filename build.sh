#!/bin/bash

set -ouex pipefail

### Install RPM packages
dnf install -y tor zlib-devel wireguard-tools

### Install Unofficial RPM packages
curl -Lo bisq.rpm https://github.com/bisq-network/bisq2/releases/download/v2.1.6/Bisq-2.1.6.rpm
rpm -i bisq.rpm
