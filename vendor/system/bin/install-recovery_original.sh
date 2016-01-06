#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10901504 09b9ea9ca34c0b086701d15d270453f404b6b1e2 8151040 090d8248b641715f52a908903dc61d890c3bce65
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10901504:09b9ea9ca34c0b086701d15d270453f404b6b1e2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8151040:090d8248b641715f52a908903dc61d890c3bce65 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 09b9ea9ca34c0b086701d15d270453f404b6b1e2 10901504 090d8248b641715f52a908903dc61d890c3bce65:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
