class OrdersController < ApplicationController
	protect_from_forgery :only => :index
	def index
		@orders = Order.where(user_id:current_user.id)
	end
	def new_order
		if Order.new(name: params[:name], phone: params[:phone], address: params[:address], user_id: current_user.id).save
			order_id = Order.where(user_id: current_user.id).last.id
			#print items separately
			items = params[:item_ids].split("||")
			items = LineItem.where(id:items)
			items.each do |item|
				OrderItem.new(order_id: order_id, title: item.product.title, count: item.quantity, price: item.total_price).save
			end
			redirect_to orders_index_url, notice: 'success.'
		end
	end
end
