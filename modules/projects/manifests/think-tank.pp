class projects::think-tank {
  include phantomjs

  boxen::project { 'think-tank':
    ruby          => '2.0.0-p353',
    nginx         => true,
    source        => 'jgrau/think-tank'
  }
}
