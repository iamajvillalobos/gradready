class FruitsController < ApplicationController
  def new
    @plantation = Plantation.find(params[:plantation_id])
    @fruit = @plantation.fruits.new
  end

  def create
    @plantation = Plantation.find(params[:plantation_id])
    @fruit = @plantation.fruits.new(fruit_params)
    if @fruit.save
      redirect_to @plantation
    else
      render :new
    end
  end

  private

  def fruit_params
    params.require(:fruit).permit(:name, :variety, :color)
  end
end
