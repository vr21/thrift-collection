class Product < ApplicationRecord
  belongs_to :category
  belongs_to :condition

  validates :name, :size, :color, :price, presence: true
end
