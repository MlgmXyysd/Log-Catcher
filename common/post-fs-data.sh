#!/system/bin/sh
MODDIR=${0%/*}
time=$(date +%Y%m%d.%H%M%S)
mkdir -p /data/local/logs
echo "--------- Bootloop log catched">>/data/local/logs/$time.log
echo "--------- LogCat Module by MlgmXyysd">>/data/local/logs/$time.log
echo "--------- QQ chat group 855219808">>/data/local/logs/$time.log
logcat>>/data/local/logs/$time.log &