require 'test_helper'

class SpecSupportTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, SpecSupport
  end
end
