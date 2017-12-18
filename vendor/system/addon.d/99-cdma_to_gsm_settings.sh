#!/sbin/sh
# 
# /system/addon.d/99-cdma_to_gsm_settings.sh
#
# Patch CDMA to GSM for Android Global Phones v 4.2.7
# Build: 25/04/2016 14:34
# by Mentor - www.internauta37.altervista.org
# internauta37@altervista.org
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
bin/cdma_to_gsm_settings.sh
etc/apns-conf.xml
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
  ;;
  post-backup)
  ;;
  pre-restore)
      cp /system/etc/apns-conf.xml /system/etc/apns-conf.xml.bak
  ;;
  post-restore)
      sh /system/bin/cdma_to_gsm_settings.sh
  ;;
esac
