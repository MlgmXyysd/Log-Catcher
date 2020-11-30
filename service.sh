#!/system/bin/sh
MODDIR=${0%/*}
while ["$(getprop sys.boot_completed)"!="1"]; do
  sleep 3
done
FILE=/data/local/logcatcher/boot.lcs
if [ ! -f "$FILE" ]; then
  pkill -f logcatcher-bootlog:S
fi
