require 'rails_helper'

RSpec.describe 'recipe show page' do
  it 'provides a list of names of the ingredients for the recipe' do
      recipe = Recipe.create!(name: "Pizza", complexity: 3, genre: "Italian")
      ingredient = Ingredient.create!(name: "Cheese", cost: 1)
      ingredient = Ingredient.create!(name: "Sauce", cost: 2)

      visit "/recipes/#{recipe.id}"

      expect(page).to have_content("Cheese")
      expect(page).to have_content("Sauce")
  end

  it 'provides the total cost of the ingredients in the recipe' do
    recipe1 = Recipe.create!(name: "Pizza", complexity: 3, genre: "Italian")
    recipe2 = Recipe.create!(name: "Burger", complexity: 2, genre: "American")
    ingredient1 = Ingredient.create!(name: "Cheese", cost: 1)
    ingredient2 = Ingredient.create!(name: "Sauce", cost: 2)
    recipe_ingredient1 = RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient1.id)
    recipe_ingredient2 = RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient1.id)

    visit "recipes/#{recipe1.id}"

    expect(page).to have_content("Total Cost: 22")
  end
end

# User Story 4 of 4
# As a visitor,
# When I visit '/recipes/:id'
# I see the total cost of all of the ingredients in the recipe.
# (e.g. "Total Cost: 22")
