class Product < ApplicationRecord
  validates :price, numericality: {greater_than_or_equal_to: 0}
  has_and_belongs_to_many :categories
end
