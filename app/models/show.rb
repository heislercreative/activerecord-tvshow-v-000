class Show < ActiveRecord::Base

  def self.ratings_sum
    self.sum(:rating)
  end

end
