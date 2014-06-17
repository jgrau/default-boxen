class people::jgrau::dotfiles {
  define dotfile (
    $src = "${::boxen::config::srcdir}/dotfiles",
  ){
    file { "/Users/${::boxen_user}/${title}":
      ensure  => 'link',
      target  => "${src}/home/${title}",
      require => Repository[$src],
    }
  }

  repository { "${::boxen::config::srcdir}/dotfiles":
    source => "${::boxen_user}/dotfiles",
  }

  dotfile { '.antigen': }
  dotfile { '.consularc': }
  dotfile { '.vimrc': }
  dotfile { '.zshrc': }
  dotfile { '.ctags': }
  dotfile { '.ackrc': }
}

