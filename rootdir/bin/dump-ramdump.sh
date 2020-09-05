#!/system/bin/sh

PATH=/sbin:/system/sbin:/system/bin:/system/xbin

# ensure any directories/files created are initially only
# u+rwx, g+rw, o+r
umask 0017


# enable ramdump if ramdump partition exists
DUMP_SYSFS_NODE=/sys/kernel/mdump/compmsg
WAIT_CNT=1
MEMDUMP_OVERRIDE=1

while [ ! -e $DUMP_SYSFS_NODE ]
do
        sleep 1;
        WAIT_CNT=$(($WAIT_CNT + 1))
        if [[ "$WAIT_CNT" -eq "10" ]]; then
                # sysfs node does not exist, exit but don't reboot
                # - this could well be a normal charging mode
                exit 4
        fi
done

FILE_PREFIX="crashdump-"
FILE_INDEX=1
FILE_SUFFIX=".bin"
FILE_NAME=$FILE_PREFIX$FILE_INDEX$FILE_SUFFIX
MEMDUMP_LOG="memdump-log.txt"

FILE_ROOT_DIR="/data"
WAIT_CNT=1
while [ ! -d $FILE_ROOT_DIR ]
do
        sleep 1
        WAIT_CNT=$(($WAIT_CNT + 1))
        if [[ "$WAIT_CNT" -eq "15" ]]; then
                echo "#######Error: userdata is not mounted! #######"
                reboot
        fi
done

FILE_PATH="$FILE_ROOT_DIR/crashes"
if ! test -d $FILE_PATH; then
        mkdir -p $FILE_PATH
	echo "Create the memory dump folder" >> $FILE_PATH/$MEMDUMP_LOG
else
	if [ $MEMDUMP_OVERRIDE -eq 1 ]; then
		echo "removed the existed memory dump" >> $FILE_PATH/$MEMDUMP_LOG
		while [ -e $FILE_PATH/$FILE_NAME ]
		do
			rm -rf $FILE_PATH/$FILE_NAME
			FILE_INDEX=$(($FILE_INDEX + 1))
			FILE_NAME=$FILE_PREFIX$FILE_INDEX$FILE_SUFFIX
			echo "remove file: " $FILE_NAME >> $FILE_PATH/$MEMDUMP_LOG
		done
		FILE_INDEX=1
		FILE_NAME=$FILE_PREFIX$FILE_INDEX$FILE_SUFFIX
	else
		echo "Add new memory dump file" >> $FILE_PATH/$MEMDUMP_LOG
		while [ -e $FILE_PATH/$FILE_NAME ]
		do
			FILE_INDEX=$(($FILE_INDEX + 1))
			FILE_NAME=$FILE_PREFIX$FILE_INDEX$FILE_SUFFIX
		done
		echo $FILE_NAME >> $FILE_PATH/$MEMDUMP_LOG
	fi
fi

# save last kmsg to debug_service before dumping crashdump.
LOGTIMESTAMP=$(date +%s)
LASTKMSG=/data/system/dropbox/SYSTEM_LAST_KMSG_$LOGTIMESTAMP.txt
if [ -e /data/system/dropbox ]; then
	echo "/data/system/dropbox is existed" >> $FILE_PATH/$MEMDUMP_LOG
else
	echo "/data/system/dropbox is not existed" >> $FILE_PATH/$MEMDUMP_LOG
fi

if [ -e /proc/last_kmsg ]; then
	echo $LASTKMSG >> $FILE_PATH/$MEMDUMP_LOG
	cat /proc/last_kmsg >> $LASTKMSG
else
	echo "/proc/last_kmsg does not exist!" >> $LASTKMSG
fi

dd if=$DUMP_SYSFS_NODE of=$FILE_PATH/$FILE_NAME bs=4m
reboot
