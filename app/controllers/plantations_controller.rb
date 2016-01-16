class PlantationsController < ApplicationController
  def index
    @plantations = Plantation.all
  end

  def show
    @plantation = Plantation.find(params[:id])
  end

  def new
    @plantation = Plantation.new
  end

  def create
    @plantation = Plantation.new(plantation_params)
    if @plantation.save
      redirect_to @plantation
    else
      render :new
    end
  end

  def edit
    @plantation = Plantation.find(params[:id])
  end

  def update
    @plantation = Plantation.find(params[:id])

    if @plantation.update(plantation_params)
      redirect_to @plantation
    else
      render :edit
    end
  end

  def destroy
    @plantation = Plantation.find(params[:id])
    if @plantation.destroy
      redirect_to @plantation
    end
  end

  private

  def plantation_params
    params.require(:plantation).permit(:name)
  end

  def get_plantation
    @plantation = Plantation.find(params[:id])
  end
end
