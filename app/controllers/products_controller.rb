class ProductsController < ApplicationController
  def index
    @msg = 'TEST'
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
      # @products = Product.all
      # render 'index'
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id]).destroy
    redirect_to root_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :maker_name, :note, :evaluation, :user_id)
  end
end