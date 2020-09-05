#!/system/bin/sh
## Copyright (c) 2017 - 2017 Amazon.com, Inc. or its affiliates.  All rights reserved.
##
## PROPRIETARY/CONFIDENTIAL.  USE IS SUBJECT TO LICENSE TERMS.

LOGSRC="wifi"
LOGNAME="wifi_log_levels"
DELAY=3600

function run ()
{
	log -t $LOGNAME "Default wifi_log_levels. It is advised to create a new script specific to device's Wi-Fi chipset."
}

while true ; do
	run
	sleep $DELAY
done
