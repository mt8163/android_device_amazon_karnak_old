# android_device_amazon_karnak

## LineageOS 17.0 for the Kindle Fire HD 8 2018 (karnak) 

An unnoficial port of LineageOS 17.0 for the Kindle Fire HD 8 2018 (karnak). Currently a work in progress. When the build is stable enough, a zip will be released.

### Building

First follow the instrucions in the README [here](https://github.com/LineageOS/android/tree/lineage-17.0) to download the source.

To build, clone this repository, [this repository](https://github.com/mt8163/android_kernel_amazon_karnak), and [this repository](https://github.com/mt8163/android_vendor_amazon_karnak) into the LineageOS source.

Finally, follow the instructions [here](https://wiki.lineageos.org/devices/bacon/build), but replace all refrences to LineageOS 16.0 with 17.0, and replace the device specific code with:
```bash
source ./build/envsetup.sh
brunch lineage_karnak-userdebug
```

Continue the instructions until the build is complete.
