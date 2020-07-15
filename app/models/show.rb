class Show < ActiveRecord::Base 
  def highest_rating
    self.maximum(:rating)
  end
  def most_popular_show
    self.highest_rating.name
  end
  
  def lowest_rating
    self.minimum(:rating)
  end
  def ratings_sum
    self.sum(:rating)
  end
end