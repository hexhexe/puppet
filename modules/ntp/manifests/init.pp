class ntp {
  package {
    "ntp": 	ensure => installed;
  }

  file {
    "/etc/ntp.conf":
      ensure => present,
      source => "puppet://puppet/modules/ntp/ntp.conf",
      notify => Exec ["restart_ntp"];
  }

  exec {
    "restart_ntp":
      command => "/usr/bin/timedatectl set-ntp true",
      refreshonly => true,
  }

}