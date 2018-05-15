class Movie < ApplicationRecord
	has_one :address
	has_one :director
	has_many :categories
	has_many :actors
end
