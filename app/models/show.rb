class Show < ActiveRecord::Base 
  
  def self.highest_rating
      self.maximum(:rating)
  end 
  
  def self.most_popular_show
      self.where(rating: highest_rating).first
  end 
  
  def self.lowest_rating
      self.where(rating: highest_rating).last(id)
  end 
end 