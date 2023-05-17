class Payment < ApplicationRecord
  belongs_to :command
  has_many :partial_payments

  enum status:{initiated: 0, progress: 1, completed: 2 }

end
