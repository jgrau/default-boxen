class people::jgrau::ruby {

  # ensure a gem is installed for all ruby versions
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }

  ruby_gem { "bundler for 2.0.0":
    gem              => 'tmuxinator',
    ruby_version => '2.0.0',
  }
}
