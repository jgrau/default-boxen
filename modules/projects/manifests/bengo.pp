class projects::bengo {
  include phantomjs

  boxen::project { 'bengo':
    ruby          => '2.2.2',
    postgresql    => true,
    nginx         => true,
    source        => 'jgrau/bengo'
  }
}
