   chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
   echo blu_active > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
   chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
   echo 442000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
   chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
   echo 1066000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
   echo blu_active > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
   chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
   echo 520000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
   chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
   echo 1560000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
   chmod 644 /sys/devices/14ac0000.mali/max_clock
   echo 419 > /sys/devices/14ac0000.mali/max_clock
   chmod 644 /sys/devices/14ac0000.mali/min_clock
   echo 260 > /sys/devices/14ac0000.mali/min_clock
