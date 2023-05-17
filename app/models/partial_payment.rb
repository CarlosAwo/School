class PartialPayment < ApplicationRecord
  belongs_to :payment

  before_create :generate_reference
  validates :reference, presence: true, uniqueness: true

  private

  def generate_reference
    self.reference = loop do
      random_reference = generate_random_reference
      break random_reference unless Payment.exists?(reference: random_reference)
    end
  end

  def generate_random_reference
    letters = ('A'..'Z').to_a
    numbers = ('0'..'9').to_a

    random_letters = Array.new(5) { letters.sample }
    random_numbers = Array.new(5) { numbers.sample }

    random_reference = random_letters.join + random_numbers.join
    random_reference
  end
end
