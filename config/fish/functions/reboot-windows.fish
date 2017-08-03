function reboot-windows
  set WINDOWS_TITLE (grep -i "^menuentry 'Windows" /boot/grub/grub.cfg|head -n 1|cut -d"'" -f2)
  sudo grub-reboot $WINDOWS_TITLE
  sudo reboot
end
