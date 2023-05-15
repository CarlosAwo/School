class Order < ApplicationRecord
  # Asscociations
  belongs_to :customer
  belongs_to :user
  belongs_to :product
  has_many   :measures

  # Validations
  validates :customer, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :measures, presence: true
end
