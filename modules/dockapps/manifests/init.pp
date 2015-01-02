#TODo find more dockapps
class dockapps {
  package {
    "fakeroot":		ensure => present;
    "wmappl":		ensure => present;
#    "wmbiff":		ensure => present;
    "wmnd":		ensure => present;
    "wmix":		ensure => present; 
    "wmbinclock":       ensure => present;
    "wmtop":	       	ensure => present;
    "wmsm.app":		ensure => present;
    "autoconf":		ensure => present;
    "automake": 	ensure => present;
    "wmwifi":   	ensure => present;
#    "wmauda":		ensure => present;
  }

  file { 
    "$home/.dockapps":
      owner   => $user,
      group   => $group,
      mode    => 0550,
      ensure => 'directory';

    "$home/.dockapps/wmab":
      ensure  => present,
      owner   => $user,
      group   => $group,
      mode    => 0700,
      source  => "puppet://puppet/modules/dockapps/wmab";

    "$home/.dockapps/wmdocker":
      owner   => $user,
      group   => $group,
      mode    => 0700,
      source  => "puppet://puppet/modules/dockapps/wmdocker";

    "$home/.dockapps/wmBinClock":
      owner   => $user,
      group   => $group,
      mode    => 0700,
      source  => "puppet://puppet/modules/dockapps/wmBinClock";

    "$home/.dockapps/wmacpi":
      owner   => $user,
      group   => $group,
      mode    => 0700,
      source  => "puppet://puppet/modules/dockapps/wmacpi";

    "/etc/modules-load.d/snd_mixer_oss.conf":
      source  => "puppet://puppet/modules/dockapps/snd_mixer_oss.conf";
  }
}