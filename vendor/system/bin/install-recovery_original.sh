#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10743808 cb6862a37f58bdb675756ec9f153cb267c3a4417 7993344 d817fb719a53acc0683f77ed90a64ef3deb00db4
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10743808:cb6862a37f58bdb675756ec9f153cb267c3a4417; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7993344:d817fb719a53acc0683f77ed90a64ef3deb00db4 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery cb6862a37f58bdb675756ec9f153cb267c3a4417 10743808 d817fb719a53acc0683f77ed90a64ef3deb00db4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
