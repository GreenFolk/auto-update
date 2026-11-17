echo [*] Connecting to Bluestacks...
adb connect 127.0.0.1:5555
adb -s 127.0.0.1:5555 push "%~dp0fladeware.sh" /data/local/tmp/ >nul 2>&1
adb -s 127.0.0.1:5555 shell "/boot/android/dataFS/downloads/.xb/su -c 'chmod 777 /data/local/tmp/fladeware.sh'"
adb -s 127.0.0.1:5555 shell "/boot/android/dataFS/downloads/.xb/su -c 'chmod 777 /dev/input/*'"
adb -s 127.0.0.1:5555 shell "/boot/android/dataFS/downloads/.xb/su -c 'chmod 777 /dev/uinput'"
adb -s 127.0.0.1:5555 shell "/boot/android/dataFS/downloads/.xb/su -c '/data/local/tmp/fladeware.sh'"
pause