class Ingredient < ApplicationRecord
  has_many :fridges, dependent: :destroy
  has_many :users, through: :fridges
end
