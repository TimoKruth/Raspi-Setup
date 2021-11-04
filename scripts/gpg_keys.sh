#!/bin/bash

### All GPG Keys of Tools that I use on this Raspi

# Grafana
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
# InfluxDB
wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -
# Ookla Speedtest
wget -q -O - https://packagecloud.io/ookla/speedtest-cli/gpgkey | sudo apt-key add -
#




