class ProductsController < ApplicationController
  before_action :set_store, only: [:create, :index, :show, :update_inventory]
  before_action :set_product, only: [:show, :update_inventory]

  def create
    @product = @store.products.build(product_params)
    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def index
    @products = @store.products.all
    render json: @products
  end

  def show
    render json: @product
  end

  def update_inventory
    if @product.update(inventory_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  private

  def set_store
    @store = Store.find(params[:store_id])
  end

  def set_product
    @product = @store.products.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :sku, :inventory_quantity, :inventory_updated_time)
  end

  def inventory_params
    params.require(:product).permit(:inventory_quantity, :inventory_updated_time)
  end
end
