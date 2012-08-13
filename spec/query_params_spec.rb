require 'spec_helper'
require 'ostruct'

describe "has_query_params?" do

  before(:all) do
    class TestForSpecSupport < String
      include SpecSupport::QueryParams
    end
  end

  it "does not have empty key-value pair" do
    t = TestForSpecSupport.new("key=value")
    t.has_query_params?(nil,nil).should be_false
  end

end
