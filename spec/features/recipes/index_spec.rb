require 'rails_helper'

RSpec.describe 'recipe index' do
  it 'has a list of recipes with attributes' do
    recipe = Recipe.create!(name: "Pizza", complexity: 3, genre: "Italian")

    visit '/recipes'

    expect(page).to have_content("Pizza")
    expect(page).to have_content(3)
    expect(page).to have_content("Italian")
  end
end

# User Story 1 of 4
# As a visitor,
# When I visit '/recipes',
# I see a list of recipes with the following information:
# -Name
# -Complexity
# -Genre
# (e.g. "Name: Spaghetti, Complexity: 2, Genre: Italian")
