class Product < ApplicationRecord
  belongs_to :category

  validates :name, :size, :color, :price, presence: true
end
