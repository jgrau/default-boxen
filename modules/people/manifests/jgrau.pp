class people::jgrau {
  include projects::all

  include people::jgrau::applications
  include people::jgrau::preferences
  include people::jgrau::dotfiles
  include people::jgrau::git
  include people::jgrau::ruby
  include people::jgrau::vim
}
