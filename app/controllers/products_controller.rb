class ProductsController < ApplicationController

  before_action :redirect_root
  # helper_method :number_to_currency

  def index
    # @user = User.find(current_user.id)
    @product = Product.new
    @user = current_user
    @products = @user.products
    # @products = @user.products.order(evaluation: "DESC")
    # @total_price = @products.sum(:price).to_s(:delimited)
    @total_price = @products.sum(:price)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      # byebug
      @total_price = params[:total_price].to_i + @product.price
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
    params.require(:product).permit(:name, :price, :maker_name, :note, :evaluation).merge(user_id: current_user.id)
  end

  def redirect_root
    redirect_to top_path unless user_signed_in?
  end
end
