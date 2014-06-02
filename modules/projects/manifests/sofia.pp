class projects::sofia {
  boxen::project { 'sofia':
    ruby   => '2.1.1',
    mysql  => true,
    source => 'dogndata/sofia'
  }
}
