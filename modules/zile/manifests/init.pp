class zile {
  package { 
    'zile':  ensure => present;
    'vi':    ensure => absent;
  }

  file { "$home/.zilerc":
    owner   => $user,
    group   => $group,
    mode    => 0440,
    source  => "puppet://$puppetserver/modules/zile/zilerc",
    require => Package['zile'],
  }
}
