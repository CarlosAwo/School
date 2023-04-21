class Branch < ApplicationRecord
	has_many :students
	has_and_belongs_to_many :fields
end
