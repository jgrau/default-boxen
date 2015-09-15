class people::jgrau::vim {
  # Install neovim
  homebrew::tap { 'neovim/neovim': }

  package { 'neovim':
    ensure          => present,
    install_options => [
      '--HEAD'
    ]
  }

  # Install vim-plug plugin manager
  exec {
    'vim-plug':
      command => 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim',
      creates => "/Users/${::boxen_user}/.vim/autoload/plug.vim"
  }

  # Configure neovim to use normal vim configuration
  file { "/Users/${::boxen_user}/.nvimrc":
    target => "/Users/${::boxen_user}/.vimrc",
    ensure => 'link',
  }

  file { "/Users/${::boxen_user}/.nvim":
    ensure => 'link',
    target => "/Users/${::boxen_user}/.vim",
  }
}
