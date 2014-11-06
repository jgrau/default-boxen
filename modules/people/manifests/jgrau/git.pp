class people::jgrau::git {
  # Install git without completions as it breaks git-flow completions
  package { 'git':
    ensure          => present,
    install_options => [
      '--without-completions'
    ],
  }

  # Set up my git archives. I want it very distributed
  repository {
    'git-archives':
      ensure   => 'origin/HEAD',
      source   => "${::boxen_user}/git-archives",
      path     => "${boxen::config::srcdir}/git-archives",
      provider => 'git',
  }

  git::config::global { 'user.name':
      value => 'Jonas Grau'
  }

  git::config::global { 'user.email':
      value => 'jonas.grau@gmail.com'
  }

  git::config::global { 'pull.rebase':
      value => true
  }

  git::config::global { 'push.default':
      value => 'simple'
  }
}
