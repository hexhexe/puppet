class yakuake { 
  package { 
    'phonon-qt4-gstreamer':  	ensure => present;
    'kdebase-konsole':		ensure => present;
    'yakuake':  		ensure => present;
  }

  file {
    "$home/.kde4": 
      ensure => directory;
    "$home/.kde4/share": 
      ensure => directory;
    "$home/.kde4/share/config": 
      ensure => directory;
    "$home/.kde4/share/config/yakuake": 
      ensure => directory;
    "$home/.kde4/share/config/yakuake/yakuakerc": 
      owner => $user,
      group => $group,
      ensure => present,
      source => "puppet://puppet/modules/yakuake/yakuakerc";
  }
}