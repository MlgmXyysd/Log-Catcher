#!/system/bin/sh
MODDIR=${0%/*}
file=/data/local/logcatcher/boot.lcs
if [ ! -f "$file" ];
then
  pkill -f logcatcher-boot-mlgmxyysd:S
fi
file_err=/data/local/logcatcher/error.lcs
if [ ! -f "$file_err" ];
then
  pkill -f logcatcher-boot-error-mlgmxyysd:S
fi
