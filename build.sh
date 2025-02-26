#!/bin/bash

set -ouex pipefail

### Install packages
dnf install -y zlib-devel wireguard-tools
