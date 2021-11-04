#!/bin/bash

hostIP=$(hostname -I)
hostIP=$(echo ${hostIP:0:15} | sed 's/ *$//g')

echo "## Grafana should be reachable under ${hostIP%%*( )}:3000"
