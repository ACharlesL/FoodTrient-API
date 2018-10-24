class Ingredient < ApplicationRecord
  has_many :fridges
  has_many :users, through: :fridges
end
