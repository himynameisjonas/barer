require 'spec_helper'

describe Beer do
  before(:each) do
    @valid_attributes = {
      :bar_id => 1,
      :name => "value for name",
      :price => 1,
      :comment => "value for comment"
    }
  end

  it "should create a new instance given valid attributes" do
    Beer.create!(@valid_attributes)
  end
end
