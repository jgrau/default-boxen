class projects::sofus {
  boxen::project { 'sofus':
    ruby       => '2.1.1',
    mysql => true,
    source     => 'dogndata/sofus'
  }
}
