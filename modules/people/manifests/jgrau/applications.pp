class people::jgrau::applications {
  # include python::virtualenvwrapper
  # include python
  include macvim
  include alfred
  include virtualbox
  include chrome
  include things
  include vlc
  include spotify
  include transmit
  include wget
  include zsh
  include ctags
  include iterm2::dev
  # include iterm2::colors::solarized_light
  # include iterm2::colors::solarized_dark
  include onepassword
  include dropbox
  include skype
  include gitx::dev
  include postgresql
  include tmux
  include imagemagick
  include xquartz
  include java
  include firefox
  include caffeine
  include hipchat
  include vim
  include heroku
  include slate
  include screenhero

  package {
    [
      'git-flow',
      'reattach-to-user-namespace',
      'direnv'
    ]:
      ensure => 'latest',
  }
}
