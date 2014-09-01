class people::jgrau::preferences {
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_autocorrect
  class { 'osx::global::key_repeat_rate': rate => 2 }
  class { 'osx::global::key_repeat_delay': delay => 10 }
  include osx::dock::autohide
  include osx::finder::show_hidden_files
  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control
}
