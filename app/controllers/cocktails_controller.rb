# '....''
class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all.order(:name)
  end

  def show
    @cocktails = Cocktail.find(params[:id])
    @dose = Dose.new
    @doses = Dose.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
