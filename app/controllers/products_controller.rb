class ProductsController < ApplicationController

  def index
    @products = Admin::Product.order_by_updated.page(params[:page]).per(20)
  end

  def show
    @product = Admin::Product.find(params[:id])
  end
end
