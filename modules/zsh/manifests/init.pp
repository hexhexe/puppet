class zsh {
  package { 
    'zsh':	ensure => present;
    'autojump': ensure => present;
  }

  file { "$home/.zshrc":
    owner   => $user,
    group   => $group,
    mode    => 0600,
    source  => "puppet://puppet/modules/zsh/zshrc",
    require => Package['zsh'],
  }

}
