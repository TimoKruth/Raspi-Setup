#!/bin/bash

### Installs tools used on this Raspi

echo "## Install Grafana"
sudo apt install grafana
echo "## Install InfluxDB"
sudo apt install influxdb
sudo apt install python3-influxdb
echo "## Install Ookla Speedtest"
sudo apt install apt-transport-https gnupg1 dirmngr
sudo apt install speedtest
echo "## Install Docker"
curl -fsSL https://get.docker.com -o downloads/get-docker.sh
sudo sh downloads/get-docker.sh
rm downloads/get-docker.sh
