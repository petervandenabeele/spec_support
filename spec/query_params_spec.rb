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

  it "has simple key-value pair" do
    t = TestForSpecSupport.new("key=value")
    t.has_query_params?("key", "value").should be_true
  end

  it "does not match subpart of value" do
    t = TestForSpecSupport.new("key=values")
    t.has_query_params?("key", "value").should be_false
  end

  it "does not match subpart of key" do
    t = TestForSpecSupport.new("skey=value")
    t.has_query_params?("key", "value").should be_false
  end

  it "does not match subpart of value delimited by &" do
    t = TestForSpecSupport.new("key=values&")
    t.has_query_params?("key", "value").should be_false
  end

  it "does match value delimited by &" do
    t = TestForSpecSupport.new("key=value&a=b")
    t.has_query_params?("key", "value").should be_true
  end

  it "does not match subpart of key delimited by &" do
    t = TestForSpecSupport.new("&skey=values")
    t.has_query_params?("key", "value").should be_false
  end

  it "does match key delimited by &" do
    t = TestForSpecSupport.new("a=b&key=value")
    t.has_query_params?("key", "value").should be_true
  end

end
