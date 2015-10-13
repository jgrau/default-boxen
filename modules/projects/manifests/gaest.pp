class projects::gaest {
  boxen::project { 'gaest-api':
    ruby          => '2.2.2',
    postgresql    => true,
    nginx         => true,
    source        => 'gaest/gaest-api'
  }

  boxen::project { 'gaest-web':
    nodejs          => 'v4.1.1',
    source        => 'gaest/gaest-web'
  }
}
