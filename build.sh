#bin/bash
var=userdebug
outdir=$(pwd)/out/target/product/karnak
echo "**********SETTING UP ENVIROMENT************"
source build/envsetup.sh
echo "*******************************************"
lunch full_karnak-$var
#you can rename this to your out directory ^
echo "*************COPYING ROOTDIR***************"
cp -rv $(pwd)/device/amazon/karnak/root $outdir/
echo "*******************************************"
export LC_ALL=C
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
echo "************STARTING BUILD*****************"
mka bacon
if [ -f $outdir/*.zip ]
then
    echo "************BUILD COMPLETE!****************"
else 
    echo "************BUILD FAILED!****************"
fi


