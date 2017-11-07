class Condition < ApplicationRecord
  validates :description, presence: true
end
