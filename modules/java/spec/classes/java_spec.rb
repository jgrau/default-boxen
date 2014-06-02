require 'spec_helper'

describe "java" do
  let(:facts) { default_test_facts }

  it do
    should include_class('boxen::config')

    should contain_package('jdk-7u51.dmg').with({
      :ensure   => 'present',
      :alias    => 'java',
      :provider => 'pkgdmg',
      :source   => 'https://dl.dropboxusercontent.com/u/205010/boxen-downloads/java/jdk-7u51-macosx-x64.dmg'
    })

    should contain_file('/test/boxen/bin/java').with({
      :source  => 'puppet:///modules/java/java.sh',
      :mode    => '0755',
      :require => 'Package[java]'
    })
  end
end
