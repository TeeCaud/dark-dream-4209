class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @ingredients = Ingredient.all
  end
end
