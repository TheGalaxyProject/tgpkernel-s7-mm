#!/system/bin/sh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

mount -o remount,rw /;
mount -o rw,remount /system

# init.d support
if [ ! -e /system/etc/init.d ]; then
	mkdir /system/etc/init.d
	chown -R root.root /system/etc/init.d
	chmod -R 755 /system/etc/init.d
fi

# start init.d
for FILE in /system/etc/init.d/*; do
	sh $FILE >/dev/null
done;

# Deep Sleep fix by @Chainfire (from SuperSU)
for i in `ls /sys/class/scsi_disk/`; do
cat /sys/class/scsi_disk/$i/write_protect 2>/dev/null | grep 1 >/dev/null
if [ $? -eq 0 ]; then
echo 'temporary none' > /sys/class/scsi_disk/$i/cache_type
fi
done

# PWMFix
# 0 = Disabled, 1 = Enabled
echo "0" > /sys/class/lcd/panel/smart_on

# SELinux Permissive / Enforcing Patch
# 0 = Permissive, 1 = Enforcing
echo "0" > /sys/fs/selinux/enforce

# Advanced Mods

