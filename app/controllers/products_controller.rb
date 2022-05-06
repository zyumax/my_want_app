class ProductsController < ApplicationController
  def index
    
  end

  def new
    @product = Product.new
    @human = "terebi"
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render 'index'
    else
      render 'new'
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :price, :maker_name, :note, :evaluation, :user_id)
    end

end
