class CartsController < ApplicationController
	before_filter :initialize_cart

	def add
		@cart.add_item params[:id]
		session["cart"] = @cart.serialize
		product = Product.find params[:id]
		redirect_to :back, notice: "Added #{product.name} to cart."
	end

	def remove
		@cart.remove_item params[:id]
		session["cart"] = @cart.serialize
		redirect_to :back, notice: "Deleted from cart."
	end

	def add_quantity
		@cart.add_quantity params[:id]
		session["cart"] = @cart.serialize
		redirect_to :back, notice: "Quantity added."
	end

	def remove_quantity
		@cart.remove_quantity params[:id]
		session["cart"] = @cart.serialize
		redirect_to :back, notice: "Quantity removed."
	end

	def show

	end

	def kill
		reset_session
		redirect_to :back, notice: "Session is cleared"
	end

	def checkout
		@order_form = OrderForm.new user: User.new
	end

end