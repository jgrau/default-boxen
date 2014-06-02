class people::jgrau {
  include projects::all

  include python
  include macvim
  include alfred
  include virtualbox
  include chrome
  include things
  include vlc
  include spotify
  include transmit
  include wget
  include zsh
  include ctags
  include iterm2::dev
  # include iterm2::colors::solarized_dark
  include onepassword
  include dropbox
  include skype
  include gitx::dev
  include postgresql
  include tmux
  include imagemagick
  include xquartz
  include java
  include firefox

  include vim
  vim::bundle { [
    'rodjek/vim-puppet',
    'tpope/vim-fugitive',
    'tpope/vim-liquid',
    'tpope/vim-markdown',
    'tpope/vim-haml',
    'pangloss/vim-javascript',
    'kchmck/vim-coffee-script',
    'vim-ruby/vim-ruby',
    'tpope/vim-rails',
    'tpope/vim-cucumber',
    'msanders/snipmate.vim',
    'scrooloose/nerdtree',
    'wincent/Command-T',
    'tomtom/tcomment_vim',
    'mileszs/ack.vim',
    'tpope/vim-bundler',
    'rizzatti/funcoo.vim',
    'rizzatti/dash.vim',
    'vim-scripts/Toggle',
    'bling/vim-airline',
    'altercation/vim-colors-solarized',
    'tpope/vim-surround',
    'tpope/vim-repeat',
    'nelstrom/vim-textobj-rubyblock',
    'kana/vim-textobj-user',
    'tpope/vim-unimpaired',
    'godlygeek/tabular',
    'scrooloose/syntastic',
    'sjl/gundo.vim'
  ]: }

  include heroku
  heroku::plugin { 'accounts':
    source => 'ddollar/heroku-accounts'
  }

  # custom packages
  package {
    [
      'git-flow'
    ]:
  }
}

class { 'nodejs::global':
  version => 'v0.10'
}
