#!/system/bin/sh
MODDIR=${0%/*}
time=$(date +%Y%m%d.%H%M%S)
mkdir -p /data/media/0/logs
echo "--------- Bootloop log catched">>/data/media/0/logs/$time.log
echo "--------- LogCat Module by MlgmXyysd">>/data/media/0/logs/$time.log
echo "--------- QQ chat group 855219808">>/data/media/0/logs/$time.log
logcat>>/data/media/0/logs/$time.log &