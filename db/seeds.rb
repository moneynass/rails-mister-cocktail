require 'json'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.destroy_all
# Cocktail.destroy_all
# Dose.destroy_all

# cocktail = Cocktail.create!(name: "mojito")
# ingredient = Ingredient.create!(name: "lemon")

# dose = Dose.create!(
#   cocktail: cocktail,
#   ingredient: ingredient,
#   name: "blabla",
#   description: "1"
# )

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)
# puts "#{user}"

 user["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient.values.first)
end
#  user["drinks"].each do |ingredient|
#   p ingredient["strIngredient1"]
# end


# p user["drinks"].each do |element|

#   Ingredient.create(name: element["strIngredient1"])
# end
