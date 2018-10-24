# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :fridges
  has_many :examples
  has_many :ingredients, through: :fridges
end
