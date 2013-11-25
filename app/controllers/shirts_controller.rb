class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all
  end

  def new
    @shirt = Shirt.new
  end

  def create
    safe_shirt = params.require(:shirt).permit(:name, :description, :image)
    shirt = Shirt.create safe_shirt
    redirect_to shirt
  end

  def show
    @shirt = Shirt.find params[:id]
  end

  def edit
    @shirt = Shirt.find params[:id]
  end

  def update
    @shirt = Shirt.find params[:id]
    safe_shirt = params.require(:shirt).permit(:name, :description, :image)
    @shirt.update safe_shirt
    redirect_to @shirt
  end
end
