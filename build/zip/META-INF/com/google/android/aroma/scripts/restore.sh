#!/sbin/sh
# Config Restore script by djb77

mount /dev/block/platform/155a0000.ufs/by-name/USERDATA /data

# Variables
config=/data/media/0/TGPKernel/config

# Copy backed up config files to /tmp/aroma
cp -f $config/* /tmp/aroma

exit 10
