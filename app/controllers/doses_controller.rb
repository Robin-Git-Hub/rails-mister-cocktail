class DosesController < ApplicationController
  def new
    @doses = Dose.new
    @ingredient = Ingredient.all
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient])
    @cocktail.ingredient << @ingredient
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
  end
end
