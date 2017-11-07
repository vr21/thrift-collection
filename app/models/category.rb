class Category < ApplicationRecord
  validates :type, presence: true 
end
