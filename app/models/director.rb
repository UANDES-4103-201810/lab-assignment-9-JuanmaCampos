class Director < ApplicationRecord
	has_many :movies
	def completename
		"#{first_name}  #{last_name}"
	end
end
