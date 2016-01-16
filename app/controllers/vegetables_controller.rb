class VegetablesController < ApplicationController
  before_action :get_plantation

  def new
    @vegetable = @plantation.vegetables.new
  end

  def create
    @vegetable = @plantation.vegetables.new(vegetable_params)
    if @vegetable.save
      redirect_to @plantation
    else
      render :new
    end
  end

  private

  def vegetable_params
    params.require(:vegetable).permit(:name, :variety, :color, :harvested_at)
  end

  def get_plantation
    @plantation = Plantation.find(params[:plantation_id])
  end
end
