class people::jgrau::heroku {
  heroku::plugin { 'accounts':
    source => 'ddollar/heroku-accounts'
  }
}
