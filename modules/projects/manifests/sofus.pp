class projects::sofus {
  include phantomjs

  boxen::project { 'sofus':
    ruby   => '2.1.1',
    mysql  => true,
    nginx  => true,
    source => 'dogndata/sofus'
  }
}
