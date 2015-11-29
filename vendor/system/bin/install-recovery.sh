#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10743808 282020861d30985e498802a42277a796e0f11528 7993344 232a6b9e8fe547799078c09dc7ddb44a604c05d3
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10743808:282020861d30985e498802a42277a796e0f11528; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7993344:232a6b9e8fe547799078c09dc7ddb44a604c05d3 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 282020861d30985e498802a42277a796e0f11528 10743808 232a6b9e8fe547799078c09dc7ddb44a604c05d3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
