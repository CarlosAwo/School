module StudentsHelper

  def student_forms
    {
      'first_name': {
        'title': 'Nom ',
        'field': 'text'
      },
      'last_name': {
        'title': 'Prénom',
        'field': 'text'
      },
      'birth_place': {
        'title': 'Lieu de Naissance',
        'field': 'text'
      },
      'birth_date': {
        'title': 'Date de naissance',
        'field': 'date',
      },
      'gender': {
        'title': 'Sexe',
        'field': 'radio',
        "collection":Student.genders,
      },
      'phone': {
        'title': 'Numéro de téléphones',
        'field': 'telephones',
      },
      'email': {
        'title': 'E-mail',
        'field': 'email',
      },
      'residence': {
        'title': 'Lieu de Résidence',
        'field': 'text',
      },
      'branch_id': {
        'title': 'Filiere',
        'field': 'select',
        "select_collection": Branch.all.pluck(:name, :id)
      },
    }
  end
  
end
