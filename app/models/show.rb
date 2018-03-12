class Show < ActiveRecord::Base

  def self.highest_rating
    self.order(rating: :desc).first
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

end
