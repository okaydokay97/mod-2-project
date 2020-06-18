class Movie < ApplicationRecord
  has_many :roles
  has_many :reviews
  has_many :actors, through: :roles 
  has_many :users, through: :reviews


  def average_rating
    all_ratings = self.reviews.map{|review| review.rating}
    num_ratings = all_ratings.count
    sum_all_ratings = all_ratings.inject{|sum, n| sum + n}.to_f
    avg = sum_all_ratings/num_ratings
    if avg % 1 == 0 
      avg.to_i
    else 
      avg
    end
  end

  def self.sort_alphabetically
    movie_titles = self.all.sort_by{|m| m.title}
  end

  def self.sort_by_rating
    self.all.sort_by{|movie| -movie.average_rating}
  end


end
