class User < ApplicationRecord
  has_many :reviews
  has_many :movies, through: :reviews
  validates :user_name, presence: true, uniqueness: true

  def review_count
    self.reviews.count
  end
end
