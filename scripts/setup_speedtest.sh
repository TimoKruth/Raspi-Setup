#!/bin/bash

read -s -p "## Set influxDB admin password:" influxPW
read -s -p "## Set user speedmonitor password:" y

echo "## Create user speedmonitor"
influx -username admin -password ${influxPW} -execute 'create user "speedmonitor" with password '\'${y}\'
echo "## Create database internetspeed"
influx -username admin -password ${influxPW} -execute 'CREATE DATABASE internetspeed'
echo "## Grant access to database to user"
influx -username admin -password ${influxPW} -execute 'GRANT ALL ON "internetspeed" to "speedmonitor"'
echo "## Setup a crontab for speedtest python script."
cp downloads/speedtest.py ~/scripts/
echo "## To run every 15 minutes copy following to end of crontab (crontab starts after you hit Enter):"
read -s -p "## */15 * * * * python3 /home/pi/scripts/speedtest.py"
crontab -e
