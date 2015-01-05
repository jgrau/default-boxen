class projects::gomore {
  include phantomjs

  boxen::project { 'gomore':
    ruby          => '2.0.0-p353',
    postgresql    => 'gomore',
    nginx         => true,
    source        => 'gomore/gomore-web'
  }
}
