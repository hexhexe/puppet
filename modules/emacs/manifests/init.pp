class emacs {

  package {
    emacs:  	ensure => present;
    gxmessage:  ensure => present;
    xpp:	ensure => present;
    xclip:	ensure => present;
    python-pip: ensure => present;
    w3m: 	ensure => present;
  }

  exec {
    "install-auctex":
      path => "/usr/local/sbin:/usr/local/bin:/usr/bin",
      cwd => "/data/emacs/.emacs.d/extensions/auctex/",
      command => "/usr/bin/sh configure; /usr/bin/make",
      unless =>  "/usr/bin/ls /data/emacs/.emacs.d/extensions/auctex/style/acronym.elc";
    "install-pip":
      path => "/data/emacs/.emacs.d/extensions/emacs-jedi",
      cwd => "/data/emacs/.emacs.d/extensions/emacs-jedi",
      command => "/usr/bin/pip install -r requirements.txt",
      unless => "/usr/bin/ls /usr/lib/python3.4/site-packages/jedi/common.py";
  }
}