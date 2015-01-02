class openbox {
  package {
    'openbox': 		ensure => present;
    'openbox-themes': 	ensure => present;
    'obconf': 		ensure => present;
    'hsetroot': 	ensure => present;
  }

  file { 
    "$home/.config/":
      ensure => 'directory',
      owner   => $user,
      group   => $group,
      mode    => 0550,
      require => Package [ "openbox" ];

    "$home/.config/openbox":
      ensure => 'directory',
      owner   => $user,
      group   => $group,
      mode    => 0550;

    "$home/.config/openbox/rc.xml":
      owner   => $user,
      group   => $group,
      mode    => 0755,
      source  => "puppet://puppet/modules/desktop/ob-rc.xml";

    "$home/.config/openbox/autostart.sh":
      owner   => $user,
      group   => $group,
      mode    => 0755,
      content => template("desktop/autostart.sh.erb");
  }

}