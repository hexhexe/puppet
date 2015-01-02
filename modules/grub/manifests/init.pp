class grub {
  package {
    grub: ensure => present;
  }

  file {
    "/etc/default/grub":
      source => "puppet://puppet/modules/grub/grub.cfg",
      notify => Exec ["grub_install"];
    "/etc/mkinitcpio.conf":
      source => "puppet://puppet/modules/grub/mkinitcpio.conf",
      notify => Exec ["mkinit"];
  }

  exec {
    "grub_install":
      command => "/usr/bin/grub-mkconfig -o /boot/grub/grub.cfg; /usr/bin/grub-install /dev/sda",
      refreshonly => true;
    "mkinit":
      command => "/usr/bin/mkinitcpio -p linux",
      refreshonly => true;
  }
}