class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  validates :rating, presence: true, inclusion: {in: (0..10)}
  validates :content, presence: true
  validates :user_id, uniqueness: {scope: :movie, message: "You can only write one review per movie!"}
  
end
