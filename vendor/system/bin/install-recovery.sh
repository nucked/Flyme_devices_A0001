#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10723328 f63014ce462aaffde4c58d91c7261f4fa24317bd 7983104 6b66e5430f449f269f2aa15b9c83f9be152d22f0
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10723328:f63014ce462aaffde4c58d91c7261f4fa24317bd; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7983104:6b66e5430f449f269f2aa15b9c83f9be152d22f0 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery f63014ce462aaffde4c58d91c7261f4fa24317bd 10723328 6b66e5430f449f269f2aa15b9c83f9be152d22f0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
