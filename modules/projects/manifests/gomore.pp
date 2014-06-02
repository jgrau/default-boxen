class projects::gomore {

  boxen::project { 'gomore':
    ruby       => '2.0.0-p353',
    nginx      => true,
    postgresql => true,
    source     => 'gomore/gomore-web'
  }
}
