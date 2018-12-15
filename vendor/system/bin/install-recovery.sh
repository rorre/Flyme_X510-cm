#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11945984 3cb27c316ed775fa1a2d40d5e374c4837674b325 7819264 17dfb0a73127349ce799beebe20c4c13b1a6c071
fi
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:11945984:3cb27c316ed775fa1a2d40d5e374c4837674b325; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:7819264:17dfb0a73127349ce799beebe20c4c13b1a6c071 EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery 3cb27c316ed775fa1a2d40d5e374c4837674b325 11945984 17dfb0a73127349ce799beebe20c4c13b1a6c071:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
