# Log-Catcher

Catch boot log and save to /cache/bootlog/boot-$time.log.

When /cache is not exist fallback to /data/local/bootlog/boot-$time.log.

## Command (in Terminal):

```
catlog [(Int)duration=60]
```

It will save the operation log in ${duration}s to /data/local/catlog/catlog-$time-${duration}s.log.

## For module developer:

This module can help you to save boot and app crash log.

If you don't want to kill the logcat process after boot completed, you can create /data/local/logcatcher/boot.lcs file.
