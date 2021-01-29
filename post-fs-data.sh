#!/system/bin/sh
MODDIR=${0%/*}

lc_ver="v19"
lc_vercode=19

TIME=$(date +%Y-%m-%d-%H-%M-%S)

android_sdk=$(getprop ro.build.version.sdk)
build_desc=$(getprop ro.build.description)
product=$(getprop ro.build.product)
manufacturer=$(getprop ro.product.manufacturer)
brand=$(getprop ro.product.brand)
fingerprint=$(getprop ro.build.fingerprint)
arch=$(getprop ro.product.cpu.abi)
device=$(getprop ro.product.device)
android=$(getprop ro.build.version.release)
build=$(getprop ro.build.id)

if [ -d /cache ]; then
    LOG_PATH=/cache/bootlog/
else
    LOG_PATH=/data/local/bootlog
fi

FILE=$LOG_PATH/boot-$TIME.log
mkdir -p $LOG_PATH
rm -rf $FILE
touch $FILE
echo "--------- beginning of head" >>$FILE
echo "Log Catcher by MlgmXyysd" >>$FILE
echo "Version: ${lc_ver} (${lc_vercode})" >>$FILE
echo "--------- beginning of system info" >>$FILE
echo "Android version: ${android}" >>$FILE
echo "Android sdk: ${android_sdk}" >>$FILE
echo "Android build: ${build}" >>$FILE
echo "Fingerprint: ${fingerprint}" >>$FILE
echo "ROM build description: ${build_desc}" >>$FILE
echo "Architecture: ${arch}" >>$FILE
echo "Device: ${device}" >>$FILE
echo "Manufacturer: ${manufacturer}" >>$FILE
echo "Brand: ${brand}" >>$FILE
echo "Product: ${product}" >>$FILE
echo "--------- beginning of dmesg" >>$FILE
dmesg >>$FILE
echo "--------- beginning of SELinux" >>$FILE
getenforce >>$FILE
logcat -f $FILE logcatcher-bootlog:S &
