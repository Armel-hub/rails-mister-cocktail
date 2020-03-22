# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'


# Ingredient.destroy_all

# puts 'OK'

# print 'Seeding ingredient...'

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

# puts 'OK'

# require 'json'

# require 'open-uri'

# print 'Cleaning DB...........'

# Ingredient.destroy_all

# Cocktail.destroy_all

# Dose.destroy_all

# puts 'OK'

# print 'Seeding ingredient...'
# url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients_serialized = open(url).read
# ingredients = JSON.parse(ingredients_serialized)
# ingredients["drinks"].each do |ingredient|
#   Ingredient.create(name: ingredient["strIngredient1"])
# end
# url = 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic'
# cocktails_serialized = open(url).read
# cocktails = JSON.parse(cocktails_serialized)
# cocktails["drinks"].each do |cocktail|
#   Cocktail.create(name: cocktail["strDrink"])
# end

# puts 'OK'

puts 'OK'

require 'json'

require 'open-uri'

print 'Cleaning DB...........'

Ingredient.destroy_all

Cocktail.destroy_all

Dose.destroy_all

puts 'OK'
Cocktail.create(name: "Martini")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Blue Mary")
Cocktail.create(name: "Sidecar")
Cocktail.create(name: "Cosmopolitan")
Cocktail.create(name: "Mojito")

puts 'OK'


