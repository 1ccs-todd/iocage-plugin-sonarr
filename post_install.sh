#!/bin/bash

pw user add sonarr -c sonarr -u 351 -d /nonexistent -s /usr/bin/nologin

fetch http://download.sonarr.tv/v2/master/mono/NzbDrone.master.tar.gz -o /usr/local/share
tar -xzvf /usr/local/share/NzbDrone.master.tar.gz -C /usr/local/share
rm /usr/local/share/NzbDrone.master.tar.gz

chmod u+x /usr/local/etc/rc.d/sonarr
sysrc "sonarr_enable=YES"