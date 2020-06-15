class Movie < ApplicationRecord
  has_many :roles
  has_many :reviews
  has_many :actors, through: :roles 
  has_many :users, through: :reviews
end
