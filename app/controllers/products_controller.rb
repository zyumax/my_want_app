class ProductsController < ApplicationController
  def index
    @products = Product.all
    # @total_price = Product.all.sum(:price)
    @total_price = @products.sum(:price)
  end

  def new
    @product = Product.new
  end

  def create
    # byebug
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

  def predict
    @products = Product.where('evaluation >= ?', 4)
    @predict_price = @products.sum(:price)
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :maker_name, :note, :evaluation, :user_id)
  end
end
