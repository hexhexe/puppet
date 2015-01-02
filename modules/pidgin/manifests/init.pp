class pidgin {
  package {
    'pidgin': ensure => present;
    'pidgin-otr': ensure => present;
  }
}