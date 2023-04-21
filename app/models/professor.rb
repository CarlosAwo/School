class Professor < ApplicationRecord
  has_many :fields
  
  enum gender:{H:"Homme" , F:"Femme"}

  def age
    super(self.birth_date)
  end

end
