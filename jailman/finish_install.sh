#!/usr/local/bin/bash
# This file contains the install script for sonarr

#init jail
initblueprint "$1"

# Initialise defaults

# Check if dataset for completed download and it parent dataset exist, create if they do not.
createmount "$1" "${global_dataset_downloads}"
createmount "$1" "${global_dataset_downloads}"/complete /mnt/fetched

# Check if dataset for media library and the dataset for tv shows exist, create if they do not.
createmount "$1" "${global_dataset_media}"
createmount "$1" "${global_dataset_media}"/shows /mnt/shows

iocage exec "$1" chown -R sonarr:sonarr /usr/local/share/NzbDrone /config
iocage exec "$1" service sonarr restart

exitblueprint "$1"
