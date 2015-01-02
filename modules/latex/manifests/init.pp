class latex {

  package {
    texlive-bin: 	ensure => present;
    texlive-core:	ensure => present;
    texlive-latexextra: ensure => present;
  }

}