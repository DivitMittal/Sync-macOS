#!/bin/bash

# Dependency: requires speedtest & jq

# @raycast.title Speedtest
# @raycast.author DM
# @raycast.description Test download and upload connection speed using [Speedtest](https://www.speedtest.net/apps/cli).

# @raycast.icon images/speedtest-logo.png
# @raycast.mode inline
# @raycast.packageName Internet
# @raycast.refreshTime 20m
# @raycast.schemaVersion 1

if ! command -v speedtest &> /dev/null; then
	echo "speedtest command is required (https://www.speedtest.net/apps/cli).";
	exit 1;
fi

if ! command -v jq &> /dev/null; then
	echo "jq is required (https://stedolan.github.io/jq/).";
	exit 1;
fi

json=$(speedtest --json)

ping=$(echo "$json" | jq -r '.ping')
bps_down=$(echo "$json" | jq -r '.download')
bps_up=$(echo "$json" | jq -r '.upload')

divide_to_mbps="2^20"
mbps_down=$(echo "scale=2; $bps_down / $divide_to_mbps / 8" | bc)
mbps_up=$(echo "scale=2;   $bps_up / $divide_to_mbps / 8" | bc)

echo "↓ ${mbps_down}MiB/s  ↑ ${mbps_up}MiB/s  ↔ ${ping}ms"
