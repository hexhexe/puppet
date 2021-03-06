class lxdm {

  package {
    'lxdm': 	ensure => present;
  }

  service {
    'lxdm': 	ensure => enabled;
  }

  file {
    '/etc/lxdm/lxdm.conf':
      owner   => $user,
      group   => $group,
      mode    => 0700,
      content   => template("desktop/lxdm.conf.erb");
    '/etc/lxdm/lxdm-bg.png':
      owner   => $user,
      group   => $group,
      mode    => 0700,
      source => "puppet://puppet/modules/desktop/lxdm-bg.png";
  }
}