#!/usr/bin/env bash
# LEOS (Light and Efficient Operational System) — archiso profile definition

iso_name="leos"
iso_label="LEOS_BETA_V0_1"
iso_publisher="LEOS Project"
iso_application="LEOS - Light and Efficient Operational System"
iso_version="beta-v0.1"
install_dir="leos"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
)
