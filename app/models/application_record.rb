class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def age(born_year)
    Date.today.year - born_year
  end
end
