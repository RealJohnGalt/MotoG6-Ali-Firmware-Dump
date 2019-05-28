#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:23171072:5c9293c79ef46b40e7165c0b979d0b878e98d18c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23068672:0c54defc9985a73ab77a3d178c7b11a366245a6d EMMC:/dev/block/bootdevice/by-name/recovery 5c9293c79ef46b40e7165c0b979d0b878e98d18c 23171072 0c54defc9985a73ab77a3d178c7b11a366245a6d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
