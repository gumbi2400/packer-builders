#!/bin/bash
set -e

wait_for_apt () {
  while [ -f /var/lib/apt/lists/lock ] ; do
    echo -e "Waiting for apt to complete"; sleep 10
  done
}

upgrade () {
  echo -e "---Upgrading to latest---"
  apt-get update
  # Make sure we don't get hung up on silly interactive menus
  DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade --autoremove
}

wait_for_apt
upgrade
reboot