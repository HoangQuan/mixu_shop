class Admin::ProductsController < Admin::AdminController
  layout "admin"
  before_filter :admin_user
  
  def index
    @products = Admin::Product.order(:updated_at).page(params[:page]).per(5)
  end
  def new
    @product = Admin::Product.new
  end

  def show
    @product = Admin::Product.find(params[:id])
  end

  def create
    @product = Admin::Product.new(params.require(:admin_product).permit(:name,
     :size, :price, :product_type_id, :image_fb_url1, :image_fb_url2, :image_fb_url3))
    if @product.valid?
      @product.save
      redirect_to admin_product_path(@product), notice: :".created"
    else
      render :new
    end
  end

  def edit
    @product = Admin::Product.find(params[:id])
  end

  def update
    @product = Admin::Product.find(params[:id])
    product = params.require(:admin_product).permit(:name, :size,
     :price, :product_type_id, :image_fb_url1, :image_fb_url2, :image_fb_url3)
    if @product.update(product)
      redirect_to admin_product_path(@product), notice: :".updateted"
    else
      render :edit
    end
  end

  def destroy
    @product = Admin::Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path
  end
end
