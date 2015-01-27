class projects::gomore {
  include phantomjs

  boxen::project { 'gomore':
    ruby          => '2.2.0',
    postgresql    => 'gomore',
    nginx         => true,
    source        => 'gomore/gomore-web'
  }
}
