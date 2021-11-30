class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]


  #before_action :require_login
  #before_action :current_user, only: [:create, :destroy]
#  before_action :correct_user, only: :destroy
#  before_action :authenticate_admin, only: :products_url

  #private
  #  def correct_user
    #   redirect_to(store_index) if current_user.nill? && !current_user.admin?
    #end

    #def admin_user
    #   redirect_to(products_url) unless current_user.admin?

  #  end

  add_flash_types :error, :info, :warning, :success

  before_action :ensure_admin_user!

  def ensure_admin_user!
    unless current_user and current_user.admin?
      redirect_to products_url, error: "You don't belong there ...sorrey , maybe you can join us ?..hahah"
    end
  end




  # GET /products or /products.json
  def index
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price, :selection)
    end
end
