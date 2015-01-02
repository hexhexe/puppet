class laptop {
  package {
    'laptop-mode-tools': ensure => present;
    'acpid': ensure => present;
    'hdparm': ensure => present;
  }

  service { 'laptop-mode':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Package['hdparm'],
  }

  service { 'acpid':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
  }
}