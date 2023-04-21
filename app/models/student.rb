class Student < ApplicationRecord
  belongs_to :branch

  enum gender:{H:"Homme", F:"Femme" }

  def age
    super(self.birth_date)
  end

end
