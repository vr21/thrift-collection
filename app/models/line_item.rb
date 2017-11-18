class LineItem < ApplicationRecord
  belongs_to :order
  validates :quantity, :price, presence: true
end
