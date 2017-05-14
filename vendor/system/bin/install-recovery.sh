#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10137600 0eb1cae492aee1836a5e24efe16ece92c709915b 7469056 8d6ab6557de2ffc43f0b04156dc9bfd697ae62a9
fi

if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:10137600:0eb1cae492aee1836a5e24efe16ece92c709915b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:7469056:8d6ab6557de2ffc43f0b04156dc9bfd697ae62a9 EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery 0eb1cae492aee1836a5e24efe16ece92c709915b 10137600 8d6ab6557de2ffc43f0b04156dc9bfd697ae62a9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
