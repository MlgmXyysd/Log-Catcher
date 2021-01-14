#!/system/bin/sh
MODDIR=${0%/*}
until [ -d "/storage/emulated/0/Android" ] && [ $(getprop sys.boot_completed) -eq 1 ]; do
  sleep 5
done

FILE=/data/local/logcatcher/boot.lcs
if [ ! -f "$FILE" ]; then
  pkill -f logcatcher-bootlog:S
fi
