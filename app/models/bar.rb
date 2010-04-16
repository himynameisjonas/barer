class Bar < ActiveRecord::Base
  include Geokit::Geocoders
  #acts_as_mappable
  has_many :beer
  before_save :fix_position
  
  validates_presence_of :street
  validates_presence_of :city
  validates_presence_of :name
  
  
  
  private
  
  def fix_position
    pos = MultiGeocoder.geocode("#{self.street}, #{self.city}, Sweden")
    if pos.success
      self.lat = pos.lat
      self.lng = pos.lng      
    end
  end
  
end
