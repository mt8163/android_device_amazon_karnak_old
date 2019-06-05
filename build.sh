#bin/bash
var=userdebug
echo "**********SETTING UP ENVIROMENT************"
source build/envsetup.sh
echo "*******************************************"
lunch full_karnak-$var
echo "*************COPYING ROOTDIR***************"
cp -rv /home/kai/android/nougat/device/amazon/karnak/root /home/kai/android/nougat/out/target/product/karnak/
echo "*******************************************"
export LC_ALL=C
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
echo "************STARTING BUILD*****************"
mka bacon
echo "************BUILD COMPLETE!****************"
