class tools {

  package {
    "acpi":			ensure => present;
    "cpupower":			ensure => present;
    "laptop-mode-tools":	ensure => present;
#    "cpufrequtils":		ensure => present;
    "strace":			ensure => present;
    "eog":	    		ensure => present;
    "qupzilla":     		ensure => present;
    "firefox":	    		ensure => present;
    "chromium":     		ensure => present;
    "hunspell-de":  		ensure => present;
    "aspell":  	    		ensure => present;
    "tcpdump":	    		ensure => present;
    "deadbeef":    		ensure => present;
    "openssh":			ensure => present;
    "rsync":			ensure => present;
    "git":	    		ensure => present;
    "flashplugin":  		ensure => present;
    "gnome-alsamixer":  	ensure => present;
    "dvdrip": 			ensure => present;
    "vlc":			ensure => present;
    "openssl": 			ensure => present;
    "openvpn":			ensure => present;
    "pidgin": 			ensure => present;
    "pidgin-otr":		ensure => present;
    "claws-mail":		ensure => present;
    "kdegraphics-okular":	ensure => present;
    "alsa-utils":		ensure => present;
    "alsa-oss":			ensure => present;
    "clamav":			ensure => present;
    "spamassassin":		ensure => present;
    "aumix":			ensure => present;
    "xorg-xbacklight":		ensure => present;
  }
}
