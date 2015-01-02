class openrc {
  package {
    openrc:			ensure => present;
    openrc-arch-services-git:	ensure => present;
    net-tools:			ensure => present;
    syslog-ng:			ensure => present;
  }
}