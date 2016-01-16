class FruitsController < ApplicationController
  before_action :get_plantation

  def new
    @fruit = @plantation.fruits.new
  end

  def create
    @fruit = @plantation.fruits.new(fruit_params)
    if @fruit.save
      redirect_to @plantation
    else
      render :new
    end
  end

  def show
    @fruit = Fruit.find_by(params[:id])
  end

  def edit
    @fruit = Fruit.find_by(params[:id])
  end

  def update
    @fruit = Fruit.find_by(params[:id])

    if @fruit.update(fruit_params)
      redirect_to plantation_fruit_path(@plantation, @fruit)
    else
      render :edit
    end
  end

  private

  def fruit_params
    params.require(:fruit).permit(:name, :variety, :color)
  end

  def get_plantation
    @plantation = Plantation.find(params[:plantation_id])
  end
end
