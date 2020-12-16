#!/system/bin/sh
MODDIR=${0%/*}
while sleep 5; do
  if [[ -d "/sdcard/Android" ]] && [["$(getprop sys.boot_completed)"="1"]]; then
    break
  fi
done

FILE=/data/local/logcatcher/boot.lcs
if [ ! -f "$FILE" ]; then
  pkill -f logcatcher-bootlog:S
fi
