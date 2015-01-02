class yaourt {

  package {
    yaourt: 	ensure => "installed";
    make: 	ensure => "installed";
    binutils: 	ensure=> "installed";
    gcc:	ensure => "installed";
    patch:	ensure => "installed";
  }

  file {
    "/etc/pacman.conf":
      mode => 0644,
      owner => "root",
      source => "puppet://puppet/modules/yaourt/pacman.conf";
  }

}
