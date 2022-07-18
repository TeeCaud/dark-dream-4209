require 'rails_helper'

RSpec.describe 'ingredients index' do
  it 'shows a list of ingredients and the number of recipes each ingreidnet is used in' do
    recipe1 = Recipe.create!(name: "Pizza", complexity: 3, genre: "Italian")
    recipe2 = Recipe.create!(name: "Burger", complexity: 2, genre: "American")
    ingredient1 = Ingredient.create!(name: "Cheese", cost: 1)
    ingredient2 = Ingredient.create!(name: "Sauce", cost: 2)
    recipe_ingredient1 = RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient1.id)
    recipe_ingredient2 = RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient1.id)

    visit '/ingredients'

    expect(page).to have_content("Cheese: 2")
    expect(page).to have_content("Sauce: 0")
  end
end

# User Story 3 of 4
# As a visitor,
# When I visit '/ingredients'
# I see a list of ingredients and the number of recipes each ingredient is used in.
# (e.g. "Ground Beef: 2"
#      "Salt: 4")
