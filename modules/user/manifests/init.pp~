class user {

  package {
    sudo: ensure => "installed";
  }

  group { $group:
    ensure => present,
  }
 
  user { 
    $user:
      ensure => present,
      home => $home,
      groups => $group,
      require  => Group[$group],
      shell => "/bin/zsh";
    "root":
      shell => "/bin/zsh";
  }

  file { 
    $home:
      ensure => directory,
      owner => $user,
      group => $group;  
    "/data":
      ensure => directory,
      owner => $user,
      group => $group;
  }      


  exec { 
    "user_rights":
      command => "/usr/bin/chown -R $user:$group $home; /usr/bin/chown -R $user:$group /data";
    "user_sudo":
      command => "/bin/echo '$user ALL=(ALL) ALL' >> /etc/sudoers",
      unless => "/bin/grep  '$user ALL=(ALL) ALL' /etc/sudoers";
  }

}
