class Book < ApplicationRecord
	has_many :products
	validates :title, presence: true, uniqueness: true
	validates :year, presence: true
	validates :author, presence: true
end
