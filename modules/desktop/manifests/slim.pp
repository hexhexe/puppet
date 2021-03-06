class slim {
  package { 
    'slim': 	ensure => present,
  }

  service { 
    'slim':
      ensure     => running,
      hasstatus  => true,
      hasrestart => true,
      enable     => true,
  }

  file {
    "/etc/slim.conf":
      ensure	=> present,
      content	=> template("desktop/slim.conf.erb"),
      notify	=> Service ["slim"];
  }

}