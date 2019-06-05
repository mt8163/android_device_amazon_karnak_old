#bin/bash
var=userdebug
outdir=/home/kai/android/nougat/out/target/product/karnak/
echo "**********SETTING UP ENVIROMENT************"
source build/envsetup.sh
echo "*******************************************"
lunch full_karnak-$var
#you can rename this to your out directory ^
echo "*************COPYING ROOTDIR***************"
cp -rv /home/kai/android/nougat/device/amazon/karnak/root $outdir
echo "*******************************************"
export LC_ALL=C
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
echo "************STARTING BUILD*****************"
mka bacon
echo "************BUILD COMPLETE!****************"
