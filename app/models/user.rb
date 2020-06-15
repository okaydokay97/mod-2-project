class User < ApplicationRecord
  has_many :reviews
  has_many :movies, through: :reviews

  def review_count
    self.reviews.count
  end
end
