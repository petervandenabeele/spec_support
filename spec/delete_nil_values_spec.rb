require 'spec_helper'
require 'ostruct'

describe "delete_nil_values" do

  it "keeps a non nil value" do
    h = {:a => 1, :b => ""}
    h.delete_nil_values.size.should == 2
  end

  it "removes a nil value" do
    h = {:a => 1, :b => nil }
    h.delete_nil_values.should == {:a => 1}
  end

  it "is different object" do
    h = {:a => 1, 'b' => 2}
    h.delete_nil_values.object_id.should_not == h.object_id
  end

end

describe "present_attributes" do

  it "yields a non_nil values" do
    m = OpenStruct.new(:attributes => {:a => 'c', :b => nil})
    SpecSupport.present_attributes(m).should == {:a => 'c'}
  end

  it "is not defined on Object" do
    m = OpenStruct.new(:attributes => {:a => 'c', :b => nil})
    lambda {Object.new.present_attributes(m)}.should raise_error
  end

end
