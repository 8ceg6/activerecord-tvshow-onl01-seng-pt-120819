class Show < ActiveRecord::Base 
  
  def self.highest_rating
      maximum(:rating)
  end 
  
end 