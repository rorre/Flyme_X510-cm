#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11687936 c57aa43f61b9bed4c0980769f5fc58bd17e7a4e0 7563264 2f7f68cf6add0e6fe941842f1b7de27527b69944
fi
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:11687936:c57aa43f61b9bed4c0980769f5fc58bd17e7a4e0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:7563264:2f7f68cf6add0e6fe941842f1b7de27527b69944 EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery c57aa43f61b9bed4c0980769f5fc58bd17e7a4e0 11687936 2f7f68cf6add0e6fe941842f1b7de27527b69944:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
