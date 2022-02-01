class Product < ApplicationRecord
  belongs_to :shop

  validates :title, :price, presence: true
end
