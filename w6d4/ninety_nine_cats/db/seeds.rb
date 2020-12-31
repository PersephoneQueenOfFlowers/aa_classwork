# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all


#Cats
# t.date "birth_date", null: false
# t.string "color", null: false
# t.string "name", null: false
# t.string "sex", limit: 1, null: false
# t.text "description", null: false
ryan = Cat.create!(name: "Ryan", birth_date: "2012/10/12", color: :orange, sex:"M", description: "akjsnkn")
charlos = Cat.create!(name: "charlos", birth_date: "2012/10/12", color: :orange, sex: "M", description: "akjsnkn")
lina = Cat.create!(name: "lina", birth_date: "2012/10/12", color: :black, sex: "F", description: "akjsnkn")
erik = Cat.create!(name: "erik", birth_date: "2012/10/12", color: :orange, sex:"F", description: "akjsnkn")
zack = Cat.create!(name: "zack", birth_date: "2012/10/12", color: :tabby, sex:"F", description: "akjsnkn")
julia = Cat.create!(name: "julia", birth_date: "2012/10/12", color: :orange, sex:"M", description: "akjsnkn")
big_company = Cat.create!(name: "big", birth_date: "2012/10/12", color: :white, sex: "M", description: "akjsnkn")