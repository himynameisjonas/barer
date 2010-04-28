require 'spec_helper'

describe Bar do
  before(:each) do
    @valid_attributes = {
        :name => "Baren",
        :street => "Bargatan",
        :city => "barstaden",
        :lat => 57.7069272000,
        :lng => 11.9678614000,
        :user_id => 1
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
    
    bar = Bar.create(@valid_attributes.except(:user_id))
    bar.should have(1).error_on(:user_id)
  end
  
  it "should update long/lat on update" do
    bar = Bar.create(@valid_attributes)
    bar.update_attributes(:city => "Vreta kloster", :street => "Sörby Gård")
    bar.lat.to_f.should eql(58.5278407000)
    bar.lng.to_f.should eql(15.5543592000)
  end
end