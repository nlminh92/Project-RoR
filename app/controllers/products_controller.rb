class ProductsController < ApplicationController
	respond_to :html

	def index
    @products = Product.all
  end

  def edit
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    respond_with(@product)
  end

  def show
  end

  private

  def product_params
      params.require(:product).permit(:name_products, :status, :description, :image, :gender, :type, :type_sell, :code, :season, :date_availability, :country, :price, :size, :discount, :variants, :on_sale)
  end
end
