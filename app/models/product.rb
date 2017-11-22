class Product < ApplicationRecord
  belongs_to :category
  belongs_to :condition

  validates :name, :size, :color, :price, :image, presence: true

  mount_uploader :image, ImageUploader


    def self.keyword_search(keywords)
      keywords = "%" + keywords + "%"
      @result = Product.where("name LIKE ?", keywords)
    end
end
