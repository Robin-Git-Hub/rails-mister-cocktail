class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredient = Ingredient.all
  end



  #{}"dose"=> {"description"=>"30 cl", "ingredient_id"=>"3"}

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
      if @dose.save
     redirect_to cocktail_path(@cocktail)
      else
      render 'doses/new'
      end
  end

  def destroy
  end



  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end



