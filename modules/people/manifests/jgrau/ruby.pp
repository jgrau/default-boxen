class people::jgrau::ruby {
  class { 'ruby::global':
    version => '2.0.0'
  }

  # ensure a gem is installed for all ruby versions
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }

  ruby_gem { 'tmuxinator':
    gem          => 'tmuxinator',
    ruby_version => '*',
  }

  ruby_gem { 'git up':
    gem          => 'git-up',
    ruby_version => '*',
  }

  ruby_gem { 'flay':
    gem          => 'flay',
    ruby_version => '*',
  }
}
