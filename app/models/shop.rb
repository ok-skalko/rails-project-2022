class Shop < ApplicationRecord
  has_many :products, dependent: :destroy
  belongs_to :user

  validates :name, :status, presence: true

  enum status: [:open, :closed, :blocked]
end
