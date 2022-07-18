# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all
Ingredient.destroy_all

recipe1 = Recipe.create!(name: "Pizza", complexity: 3, genre: "Italian")
recipe2 = Recipe.create!(name: "Burger", complexity: 2, genre: "American")

ingredient1 = Ingredient.create!(name: "Cheese", cost: 1)
ingredient2 = Ingredient.create!(name: "Sauce", cost: 2)

recipe_ingredient1 = RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient1.id)
recipe_ingredient2 = RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient1.id)
