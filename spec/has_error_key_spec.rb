require 'spec_helper'
require 'ostruct'

describe 'has_error_key?' do

  it "ActiveModel is found" do
    ActiveModel
  end

  before(:each) do
    class TestOfHasErrorKey
      include ActiveModel::Validations
      validates_presence_of :foo
      attr_accessor :foo
    end
  end

  after(:each) do
    Object.send(:remove_const, :TestOfHasErrorKey)
  end

  let(:r) do
    TestOfHasErrorKey.new
  end

  describe "with error key" do
    it "create new record with active_model works" do
      r # should_not raise_error
    end

    it "has an errors function" do
      r.errors
    end

    describe "has_error_key?" do
      it "has the error when validation failed" do
        r.valid?
        r.errors.has_error_key?(:foo, :blank).should be_true
      end

      it "does not have the error when validation passed" do
        r.foo = "bar"
        r.valid?
        r.errors.has_error_key?(:foo, :blank).should be_false
      end
    end
  end
end
