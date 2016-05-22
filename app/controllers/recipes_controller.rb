class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to(recipes_path)
    
  end

  def edit
  end
  
  def new #strona z formularzem wysyłane do create i tworzone w bazie danych
  end
  
  def create
    entry = Recipe.create(recipe_params)
    redirect_to(recipes_path)
  end
  
  def update
  end
  
  def recipe_params
    params.require(:recipe).permit(:food, :date, :description)
  end
  
end
