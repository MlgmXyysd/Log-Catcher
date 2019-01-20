#!/system/bin/sh
MODDIR=${0%/*}
function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(($RANDOM+100000000))
    return $(($num%$max+$min))
}
msg[0]="Now just a little more only just a little more..."
msg[1]="It's not a right that I'm due, my duty that is must have been kept..."
msg[2]="Since one day you will disappear, I'll keep every part of you..."
msg[3]="Yes we are time fliers scaling the walls of time climbers, tired of playing hide and seek with time..."
msg[4]="Wherever you are in the world, I'll search for you..."
msg[5]="Mitsuha. Mitsuha. Mitsuha, your name is Mitsuha..."
msg[6]="Someone dear to me. I don't want to forget. I shouldn't forget!"
time=$(date +%Y-%m-%d-%H-%M-%S)
path=/data/local/bootloop
file=$path/bootloop-$time.log
rand=$(rand 0 6)
android_sdk=`getprop ro.build.version.sdk`
build_desc=`getprop ro.build.description`
product=`getprop ro.build.product`
manufacturer=`getprop ro.product.manufacturer`
brand=`getprop ro.product.brand`
fingerprint=`getprop ro.build.fingerprint`
arch=`getprop ro.product.cpu.abi`
device=`getprop ro.product.device`
android=`getprop ro.build.version.release`
build=`getprop ro.build.id`
mkdir -p $path
echo "--------- beginning of head">>$file
echo "Bootloop log catched">>$file
echo "LogCat Bootloop Module by MlgmXyysd">>$file
echo "QQ chat group 855219808">>$file
echo ${msg[$rand]}>>$file
echo "--------- beginning of system info">>$file
echo "Android version: ${android}">>$file
echo "Android sdk: ${android_sdk}">>$file
echo "Android build: ${build}">>$file
echo "Fingerprint: ${fingerprint}">>$file
echo "ROM build description: ${build_desc}">>$file
echo "Architecture: ${arch}">>$file
echo "Device: ${device}">>$file
echo "Manufacturer: ${manufacturer}">>$file
echo "Brand: ${brand}">>$file
echo "Product: ${product}">>$file
logcat>>$file &