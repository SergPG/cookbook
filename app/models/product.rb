class Product < ApplicationRecord
  has_many :ingredients 

  has_many :recipes, through: :ingredients

  validates_uniqueness_of :name
end
