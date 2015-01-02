node 'espy' {
  $user = "basti"
  $group = "basti"
  $home = "/home/basti"

  include zile, zsh, tmux
  include desktop, pidgin
  # include yakuake
  include laptop
  include develop
}

node 'crazy' {
  $user = "lilu"
  $group = "lilu"
  $home = "/home"
  $background_pic = "/home/.config/openbox/background.jpg"
  $login_bg = "/etc/lxdm/background.png"

  include user, zsh, zile, tmux
  include desktop, yakuake, dockapps
  include  yaourt, tools
  include ntp
  include latex
  include grub
  include emacs
}
