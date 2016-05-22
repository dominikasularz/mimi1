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
    @recipe = Recipe.find(params[:id])
  end
  
  def new #strona z formularzem wysyłane do create i tworzone w bazie danych
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    if @recipe.valid?
      redirect_to(recipes_path)
    else
      render :edit 
    end
  end
  
  def create
    @recipe=Recipe.create(recipe_params)
    if @recipe.valid?
      redirect_to(recipes_path)
    else
      render :new 
    end
  end
  
  def recipe_params
    params.require(:recipe).permit(:food, :date, :description)
  end
  
end
