#!/bin/bash

### Enables all services needed

# Grafana
sudo systemctl enable grafana-server
# InfluxDB
sudo systemctl unmask influxdb
sudo systemctl enable influxdb
