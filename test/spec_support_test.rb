require 'test_helper'

class SpecSupportTest < ActiveSupport::TestCase
  test "spec/support directory exists" do
    assert File.exist?('spec/support'), "spec/support directory should exist"
  end

  test "spec/support/check_all_columns.rb exists" do
    assert File.exist?('spec/support/check_all_columns.rb'), "spec/support/check_all_columns.rb file should exist"
  end
end
