class people::jgrau::preferences {
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_autocorrect
  include osx::dock::autohide
  include osx::finder::show_hidden_files
  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection
  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control

  class { 'osx::global::key_repeat_rate': rate => 2 }
  class { 'osx::global::key_repeat_delay': delay => 15 }
}
