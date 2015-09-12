#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:14905344:dc8e56067afbc2ce8f701093c21e7e9591ba53d9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10248192:366ee3505642251016462ca9c919961f8419ef92 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery dc8e56067afbc2ce8f701093c21e7e9591ba53d9 14905344 366ee3505642251016462ca9c919961f8419ef92:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
