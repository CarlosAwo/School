class Student < ApplicationRecord
  belongs_to :branch

  enum gender:{H:"Homme", F:"Femme" }

  def age
    born_year = Date.parse(self.birth_date.to_s).year
    super(born_year)
  end

end
