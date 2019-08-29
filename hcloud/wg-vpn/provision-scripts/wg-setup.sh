#!/bin/bash

set -e

install_wg () { 
  add-apt-repository ppa:wireguard/wireguard
  apt-get update
  apt-get install wireguard
}

mv_sysctl () {
  mv /packer-tmp/wg-sysctl.conf /etc/sysctl.d/99-wg-sysctl.conf
  sysctl -p
}