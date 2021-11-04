#!/bin/bash

read -s -p "## Enter influxDB admin password: " influxPW
echo "## Thank you. We setup the admin user now..."
influx -execute 'create user admin with password '\'${influxPW}\'' with all privileges'
echo "## Setting conf to use auth"
sudo cp /etc/influxdb/influxdb.conf /etc/influxdb/influxdb.conf.old
sudo cp files/influxdb.conf /etc/influxdb/
echo "## Old conf is saved under /etc/influxdb/influxdb.conf.old"
echo "## Restarting service"
sudo systemctl restart influxdb
echo "## InfluxDB should now be setup properly with admin user"
