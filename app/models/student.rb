class Student < ApplicationRecord
  validates_presence_of :first_name, :last_name, :birth_date , :birth_place, :phone , :gender, :residence, :email
  enum gender:{H:"Homme", F:"Femme" }
  before_save :set_age

  def set_age
    born_year = Date.parse(self.birth_date.to_s).year
    self.age = Date.today.year - born_year
  end

end
