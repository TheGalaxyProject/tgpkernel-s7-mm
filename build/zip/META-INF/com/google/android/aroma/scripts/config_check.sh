#!/sbin/sh
# Config Check script by djb77

mount /dev/block/platform/155a0000.ufs/by-name/USERDATA /data

# Variables
config=/data/media/0/TGPKernel/config

# If config backup is present, alert installer
if [ -e $config/tgpkernel-backup.prop ];then
  echo "install=1" > /tmp/aroma/backup.prop
fi

exit 10



