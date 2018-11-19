#!/bin/sh
sysrc -f /etc/rc.conf sonarr_enable="YES"

#we need write permission to be able to write plugins update. #53127
chmod 755 /usr/local/sonarr

# Start the services
service sonarr start
