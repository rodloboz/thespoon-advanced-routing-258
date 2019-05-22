class Restaurant < ApplicationRecord
  # allows me to write @restaurant.reviews
  has_many :reviews, dependent: :destroy
end
