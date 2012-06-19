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

describe "factory_hash" do

  it "yields a non_nil values" do
    m = OpenStruct.new(:attributes => {:a => 'c', :b => nil})
    factory_hash(m).should == {:a => 'c'}
  end

end
