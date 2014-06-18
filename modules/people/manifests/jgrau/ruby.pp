class people::jgrau::ruby {

  # ensure a gem is installed for all ruby versions
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }

  ruby_gem { 'consular for all rubies':
    gem          => 'consular',
    ruby_version => '*',
  }
}
