class IngredientsController < ApplicationController

  def index
    @recipes = Recipe.all
    @ingredients = Ingredient.all
  end
end
