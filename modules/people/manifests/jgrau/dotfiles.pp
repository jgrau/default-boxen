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

  repository {
    'Personal dotfiles':
      ensure   => 'origin/HEAD',
      source => "${::boxen_user}/dotfiles",
      path     => "${boxen::config::srcdir}/dotfiles",
      provider => 'git',
  }

  dotfile { '.antigen': }
  dotfile { '.consularc': }
  dotfile { '.vimrc': }
  dotfile { '.zshrc': }
  dotfile { '.ctags': }
  dotfile { '.ackrc': }
  dotfile { '.tmux.conf': }
  dotfile { '.tmuxinator': }
}

