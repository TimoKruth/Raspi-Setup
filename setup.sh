#!/bin/bash

echo "# Add GPG Keys"
bash ./scripts/add_gpg_keys.sh
echo "# Add Repos"
bash ./scripts/add_repos.sh
echo "# Update and Upgrade"
sudo apt update
sudo apt upgrade
echo "# Install tools"
bash ./scripts/install_tools.sh
echo "# Enable Services"
bash ./scripts/enable_services.sh


echo "# Setup Tools individually"

echo "# Setup Grafana"
bash ./scripts/setup_grafana.sh
echo "# Setup influxDB"
bash ./scripts/setup_influxdb.sh
echo "# Setup Ookla Speedtest"
bash ./scripts/setup_speedtest.sh
echo "# Setup pi-hole"
bash ./scripts/basic-install.sh
echo "# Setup docker"
bash ./scripts/setup_docker.sh


