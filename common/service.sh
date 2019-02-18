#!/system/bin/sh
MODDIR=${0%/*}
file=/data/local/.logcatcher-still
if [ ! -f "$file" ];
then
  pkill -f logcatcher-boot-mlgmxyysd:V
fi
