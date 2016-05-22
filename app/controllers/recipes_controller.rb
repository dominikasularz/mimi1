class RecipesController < ApplicationController
  def index
    @recipes = [
      Recipe.new(food: "Curry", date: Date.new, description: "indyjskie"),
      Recipe.new(food: "Sajgonki", date: Date.new, description: "chińskie"),
      Recipe.new(food: "Tomka", date: Date.new, description: "tajskie")
    ]
  end

  def show
  end

  def delete
  end

  def edit
  end
  
  def new
  end
  
  def create
  end
  
  def update
  end
  
end
