class Admin::ProductTypesController < Admin::AdminController
  layout "admin"
  before_filter :admin_user

  def index
    @product_types = Admin::ProductType.order(:updated_at).page(params[:page]).per(5)
  end
  def new
    @product_type = Admin::ProductType.new
  end

  def show
    @product_type = Admin::ProductType.find(params[:id])
  end

  def create
    @product_type = Admin::ProductType.new(params.require(:admin_product_type).permit(:name))
    if @product_type.valid?
      @product_type.save
      redirect_to admin_product_type_path(@product_type), notice: :".created"
    else
      render :new
    end
  end

  def edit
    @product_type = Admin::ProductType.find(params[:id])
  end

  def update
    @product_type = Admin::ProductType.find(params[:id])
    product_type = params.require(:admin_product_typre).permit(:name)
    if @product_type.update(product_type)
      redirect_to admin_product_type_path(@product_type), notice: :".updateted"
    else
      render :edit
    end
  end

  def destroy
    @product_type = Admin::ProductType.find(params[:id])
    @product_type.destroy
    redirect_to admin_product_types_path
  end
end
