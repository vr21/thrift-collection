class Product < ApplicationRecord
  validates :name, :size, :color, :price, presence: true 
end
