class Field < ApplicationRecord
  has_and_belongs_to_many :branches
  belongs_to :professor, optional: true
end
