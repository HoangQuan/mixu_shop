class ProductsController < ApplicationController

  def index
    @q = Product.order_by_updated.search params[:q]
    @products = @q.result.page(params[:page]).per(15)
  end

  def show
    @product = Admin::Product.find(params[:id])
  end
end
