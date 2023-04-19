class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def age(birth_date)
    year = Date.today.year - birth_date.year
    if ( (Date.today.month < birth_date.month ) || (Date.today.month  == birth_date.month && Date.today.day < birth_date.day  ))
      year = year - 1
    end
    year
  end
end
