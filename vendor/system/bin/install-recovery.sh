#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11755520 f808b62ce7da25231bfc06c57036f6601395fd16 7630848 a5b447d0edebe6e54edb3616ca9a18e6ae6f57da
fi
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:11755520:f808b62ce7da25231bfc06c57036f6601395fd16; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:7630848:a5b447d0edebe6e54edb3616ca9a18e6ae6f57da EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery f808b62ce7da25231bfc06c57036f6601395fd16 11755520 a5b447d0edebe6e54edb3616ca9a18e6ae6f57da:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
