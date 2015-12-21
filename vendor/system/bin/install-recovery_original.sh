#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10901504 2b053ad07eedd2836b497695c49e274bcd28252d 8151040 3c3de4091302f225a51c8e4b5bab6075a1671045
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10901504:2b053ad07eedd2836b497695c49e274bcd28252d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8151040:3c3de4091302f225a51c8e4b5bab6075a1671045 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 2b053ad07eedd2836b497695c49e274bcd28252d 10901504 3c3de4091302f225a51c8e4b5bab6075a1671045:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
