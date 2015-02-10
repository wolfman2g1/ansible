require 'spech_helper'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe " nginx::default" do
  it " installed nginx" do
    expect(package('nginx')).to be_installed
  end
  it " should run nginx" do
    expect(service('nginx')).to be_running
  end

  it " should have enabled nginx on boot" do
    expect(service('nginx')).to be_enabled
  end

end
