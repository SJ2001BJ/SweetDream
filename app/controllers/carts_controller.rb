class CartsController < ApplicationController
  before_action :set_cart, only: %i[index show edit update destroy ]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  # GET /carts or /carts.json
  def index   
    @cart = Cart.find(session[:cart_id])
  end

  # GET /carts/1 or /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts or /carts.json
  def create

    @cart = Cart.new(cart_params)
    @cart.user_id = current_user.id

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: "Cart was successfully created." }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1 or /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: "Cart was successfully updated." }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end
  def delete_one_pro

    if LineItem.find(params[:item_id]).delete
      redirect_to "/carts/#{params[:cart_id]}"
    end
  end
    def order_info
      lineids = params[:cart_ids].split("||")
      @items = LineItem.where(id:lineids)
    end

  # DELETE /carts/1 or /carts/1.json
  def destroy
    @cart.destroy if @cart.id == session[:cart_id]
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to store_index_url, notice: 'Your cart is currently empty.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      begin
        @cart = Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        @cart.user_id = current_user.id
        session[:cart_id] = @cart.id
      end
    end

    def invalid_cart
      redirect_to store_index_url, notice: 'Invalid Cart'
    end
    # Only allow a list of trusted parameters through.
    def cart_params
      params.fetch(:cart, {})
    end
end
