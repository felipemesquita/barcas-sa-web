require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Boarding do
  before(:each) do
    @valid_attributes = {
      :day_id => 1,
      :schedule => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Boarding.create!(@valid_attributes)
  end
end
