# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


b1 = Branch.create(name: "Reseaux et Telecommunications", sigle: "RT", amount:200, duration:5)
b2 = Branch.create(name: "Gestion des Resources Humaines", sigle: "GRH", amount:200, duration:5)
b3 = Branch.create(name: "Banque et Finances", sigle: "BF", amount:200, duration:5)
b4 = Branch.create(name: "Genie Civil", sigle: "GC", amount:200, duration:5)
b5 = Branch.create(name: "Genie Logiciel", sigle: "GL", amount:200, duration:5)

Student.create(first_name:"Awo", last_name:"Carlos",email:"awocarlos55@gamil.com",birth_date: "22-12-2000", branch: b1)
Student.create(first_name:"Idi", last_name:"Boubacar",email:"idi55@gamil.com",birth_date: "22-12-2000", branch: b2)
Student.create(first_name:"Sani", last_name:"Koure",email:"sqni@gamil.com",birth_date: "22-12-2000", branch: b3)
Student.create(first_name:"Ibou", last_name:"lele",email:"lele@gamil.com",birth_date: "22-12-2000", branch: b4)