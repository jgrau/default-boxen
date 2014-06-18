class people::jgrau::git {
  # Install git without completions as it breaks git-flow completions
  package { 'git':
    ensure => present,
    install_options => [
      '--without-completions'
    ],
  }
}
