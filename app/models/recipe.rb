class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :sections
  has_many :ingredients
  has_many :comments

  has_many :products, through: :ingredients

  enum status: %w[publish underway]
end
