#!/system/bin/sh
#Copyright (C) 2019 Kai Jones

#This program is free software: you can redistribute it and/or modify it under the terms of the
#GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

#This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS 
#FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

#You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.

#Define device for ATCID
chmod 0660 /dev/ttyGS0
chown system:system /dev/ttyGS0
chmod 0660 /dev/ttyGS1
chown system:system /dev/ttyGS1

# define device for EMCSMDLOGGER
chmod 0660 /dev/ttyGS3
chown system:radio /dev/ttyGS3

# LEDS
chmod 0664 /sys/class/leds/lcd-backlight/brightness
chown system:system /sys/class/leds/red/trigger
chown system:system /sys/class/leds/green/trigger
chown system:system /sys/class/leds/blue/trigger
