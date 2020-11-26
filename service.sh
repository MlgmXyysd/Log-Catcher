#!/system/bin/sh
MODDIR=${0%/*}
FILE=/data/local/logcatcher/boot.lcs
if [ ! -f "$FILE" ];
then
  pkill -f logcatcher-boot-mlgmxyysd:S
fi
FILE_ERR=/data/local/logcatcher/error.lcs
if [ ! -f "$FILE_ERR" ];
then
  pkill -f logcatcher-boot-error-mlgmxyysd:S
fi
