class Category < ApplicationRecord
  has_many :products
  validates :type, presence: true 
end
