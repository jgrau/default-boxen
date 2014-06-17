class people::jgrau::applications {
  include python
  include python::virtualenvwrapper
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

  package {
    [
      'git-flow'
    ]:
      ensure => 'latest',
  }
}
