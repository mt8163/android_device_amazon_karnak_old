#!/sbin/sh

dd if=/dev/block/platform/mtk-msdc.0/by-name/recovery of=/tmp/recovery_amonet.hdr bs=512 count=2
dd if=/dev/block/platform/mtk-msdc.0/by-name/boot of=/tmp/boot_amonet.hdr bs=512 count=2
dd if=/dev/block/platform/mtk-msdc.0/by-name/boot of=/tmp/boot_amonet.hdr2 bs=512 count=2 skip=2

diff /tmp/recovery_amonet.hdr /tmp/boot_amonet.hdr

if [ $? -ne 0 ] ; then
    echo "Detected old or overwritten boot-exploit, restoring from recovery" > /tmp/restore_bootpatch.log
    grep "ANDROID!" /tmp/boot_amonet.hdr2
    if [ $? -ne 0 ] ; then
    	echo "Copy header to block 2" >> /tmp/restore_bootpatch.log
    	dd if=/tmp/boot_amonet.hdr of=/dev/block/platform/mtk-msdc.0/by-name/boot bs=512 count=2 seek=2	
    fi

    dd if=/tmp/recovery_amonet.hdr of=/dev/block/platform/mtk-msdc.0/by-name/boot bs=512 count=2
fi
