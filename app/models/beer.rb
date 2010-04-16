class Beer < ActiveRecord::Base
  belongs_to :bar
    
  validates_presence_of :name
  validates_presence_of :price
  validates_numericality_of :price
  
end
