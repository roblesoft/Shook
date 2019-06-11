class Store < ApplicationRecord
  has_many :products
  validates :codename, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone, presence: true
end

