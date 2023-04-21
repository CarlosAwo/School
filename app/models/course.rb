class Course < ApplicationRecord
  belongs_to :professor
  belongs_to :branch
end
