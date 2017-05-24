#!/bin/sh
sysrc -f /etc/rc.conf sonarr_enable="YES"

# Start the services
service sonarr start
