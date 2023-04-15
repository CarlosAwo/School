class Branch < ApplicationRecord
	has_many :students
	has_many :fields
end
