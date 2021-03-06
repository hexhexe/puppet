class tmux {
  package { 'tmux':
    ensure => present,
  }

  file { 
    "$home/.tmux.conf":
      owner   => $user,
      group   => $group,
      mode    => 0440,
      source  => "puppet://puppet/modules/tmux/tmux.conf",
      require => Package['tmux'];
    "$home/.tmux.d":
      ensure => directory,
      notify => Exec ["tmux_plugins"];
    "$home/.tmux.d/plugins":
      ensure => directory;
    "$home/.tmux.d/startup.sh":
      mode => 0700,
      owner => $user,
      group => $user,
      source => "puppet://puppet/modules/tmux/startup.sh";
  }

  exec  {
    "tmux_plugins":
      command => "/usr/bin/git clone https://github.com/tmux-plugins/tpm.git $home/.tmux.d/tpm; /bin/chown $user:$group -R $home",
      refreshonly => true;
  }  

}
