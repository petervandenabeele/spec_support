require 'test_helper'

class SpecSupportTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, SpecSupport
  end

  test "spec/support directory exists" do
    assert File.exist?('spec/support'), "spec/support directory should exist"
  end
end
