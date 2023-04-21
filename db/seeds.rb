# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

students = []
professors = []
fields = []
branches = []
fields_list = ["Economie Generale", 'Maths Generale', 'Maths Financiere']
braches_list = ["Reseaux Telecommunications", 'Gestion Resources Humaines', 'Genie Civil', 'Genie Logiciel']

braches_list.each do |branch|
    s = Branch.create(name: branch, sigle: branch.split.map(&:first).join, amount:200, duration:5)
    branches.push(s)
end


10.times do |i| 
    first_name = Faker::Name.name.split(' ')[0]
    last_name = Faker::Name.name.split(' ')[0]
    email = "#{first_name}#{last_name}#{rand(1..10)}@gmail.com"
    birth_date = "#{rand(1..24)}-#{rand(1..12)}-#{rand(1990..2010)}"

    s = Student.create(
        first_name: first_name, 
        last_name: last_name, 
        email: email,
        birth_date: birth_date,
        birth_place: Faker::Address.country, 
        branch: branches[rand(0..(branches.length-1))]
    )

    students.push(s)
end

10.times do |i| 
    first_name = Faker::Name.name.split(' ')[0]
    last_name = Faker::Name.name.split(' ')[0]
    email = "#{first_name}#{last_name}#{rand(1..10)}@gmail.com"
    birth_date = "#{rand(1..24)}-#{rand(1..12)}-#{rand(1990..2010)}"

    s = Professor.create(
        first_name: first_name, 
        last_name: last_name, 
        email: email,
        birth_date: birth_date,
        birth_place: Faker::Address.country
    )

    professors.push(s)
end


fields_list.each do |field|
    s = Field.create(name: field, sigle: field.split.map(&:first).join, duration:5)
    fields.push(s)
end