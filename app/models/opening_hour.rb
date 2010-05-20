class OpeningHour < ActiveRecord::Base
  belongs_to :bar
  
  
  def weekday
    case read_attribute(:weekday)
    when 0
      "Måndag"
    when 1
      "Tisdag"
    when 2
      "Onsdag"
    when 3
      "Torsdag"
    when 4
      "Fredag"
    when 5
      "Lördag"
    when 6
      "Söndag"
    end
  end
end
