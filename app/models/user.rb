class User < ApplicationRecord
  has_one :shop, dependent: :destroy

  validates :email, uniqueness: true
  validates :first_name, :last_name, :email, presence: true
end
