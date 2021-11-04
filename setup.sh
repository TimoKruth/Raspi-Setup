#!/bin/bash

echo "# Add GPG Keys"
bash ~/scripts/pi_setup/add_gpg_keys.sh
echo "# Add Repos"
bash ~/scripts/pi_setup/add_repos.sh
echo "# Update and Upgrade"
sudo apt update
sudo apt upgrade
echo "# Install tools"
bash ~/scripts/pi_setup/install_tools.sh
echo "# Enable Services"
bash ~/scripts/pi_setup/enable_services.sh


echo "# Setup Tools individually"

echo "# Setup Grafana"
bash ~/scripts/pi_setup/setup_grafana.sh
echo "# Setup influxDB"
bash ~/scripts/pi_setup/setup_influxdb.sh
echo "# Setup Ookla Speedtest"
bash ~/scripts/pi_setup/setup_speedtest.sh
echo "# Setup pi-hole"
bash ~/scripts/pi_setup/basic-install.sh
echo "# Setup docker"
bash ~/scripts/pi_setup/setup_docker.sh


