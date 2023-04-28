class Student < ApplicationRecord
  # MODULES 
  # ASSOCIATIONS
  belongs_to :branch
  # VALIDATIONS
  validates :first_name, :last_name, :birth_date, :birth_place,
            :gender, :phone, :email, :residence, :branch,
            presence: true

  enum gender:{H:"Homme", F:"Femme" }

  def age
    super(self.birth_date)
  end

end
