#!/system/bin/sh
MODDIR=${0%/*}
time=$(date +%Y%m%d.%H%M%S)
logcat>/data/media/0/logs/$time.log &