#!/system/bin/sh
MODDIR=${0%/*}

lc_ver="v18"
lc_vercode=18

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
    LOG_PATH=/cache/log/boot
else
    LOG_PATH=/data/local/boot
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
echo "--------- beginning of SELinux" >>$file
getenforce >>$file
logcat -f $FILE -v long *:V logcatcher-boot-mlgmxyysd:S &

if [ -d /cache ]; then
    PATH_ERR=/cache/log/boot_error
else
    PATH_ERR=/data/local/boot_error
fi

FILE_ERR=$PATH_ERR/error-$TIME.log
mkdir -p $PATH_ERR
rm -rf $FILE_ERR
touch $FILE_ERR
echo "--------- beginning of head" >>$FILE_ERR
echo "Log Catcher by MlgmXyysd" >>$FILE_ERR
echo "Version: ${lc_ver} (${lc_vercode}) (Error log)" >>$FILE_ERR
echo "--------- beginning of system info" >>$FILE_ERR
echo "Android version: ${android}" >>$FILE_ERR
echo "Android sdk: ${android_sdk}" >>$FILE_ERR
echo "Android build: ${build}" >>$FILE_ERR
echo "Fingerprint: ${fingerprint}" >>$FILE_ERR
echo "ROM build description: ${build_desc}" >>$FILE_ERR
echo "Architecture: ${arch}" >>$FILE_ERR
echo "Device: ${device}" >>$FILE_ERR
echo "Manufacturer: ${manufacturer}" >>$FILE_ERR
echo "Brand: ${brand}" >>$FILE_ERR
echo "Product: ${product}" >>$FILE_ERR
echo "--------- beginning of dmesg" >>$FILE
dmesg >>$FILE
echo "--------- beginning of SELinux" >>$file
getenforce >>$file
logcat -f $FILE_ERR -v long *:W logcatcher-boot-error-mlgmxyysd:S &
