module CurrentCart

  private

  def set_cart
    Rails.logger.info "------set_cart----"
    begin
      Rails.logger.info "------begin"
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      Rails.logger.info "------rescue"
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end
end
