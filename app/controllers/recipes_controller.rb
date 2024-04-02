class RecipesController < ApplicationController
    before_action :set_recipe, only: [:show]

  # GET /recipes/:id
  def show
    render json: @recipe
  rescue StandardError => e
    render json: { error: e.message }, status: :not_found
  end

  # GET /recipes?search=query
  def index
    @recipes = RecipeService.search(params[:search])
    render json: @recipes
  rescue StandardError => e
    render json: { error: e.message }, status: :unprocessable_entity
  end

  private

  def set_recipe
    @recipe = RecipeService.fetch_recipe(params[:id])
  end
end
