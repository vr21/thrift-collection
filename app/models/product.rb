class Product < ApplicationRecord
  belongs_to :category
  belongs_to :condition

  validates :name, :size, :color, :price, :image, presence: true

  mount_uploader :image, ImageUploader
end
