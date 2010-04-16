require 'spec_helper'

describe Bar do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :street => "Nyafinagatan 1",
      :city => "Metropolköping"
    }
  end

  it "should create a new instance given valid attributes" do
    Bar.create!(@valid_attributes)
  end
  
  it "should create a new instance given valid attributes" do
    bar = Bar.create(@valid_attributes.except(:name))
    bar.should have(1).error_on(:name)
    
    bar = Bar.create(@valid_attributes.except(:city))
    bar.should have(1).error_on(:city)
    
    bar = Bar.create(@valid_attributes.except(:street))
    bar.should have(1).error_on(:street)
  end
end