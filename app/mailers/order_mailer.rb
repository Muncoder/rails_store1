class OrderMailer < ActionMailer::Base
	include Devise::Mailers::Helpers
	default from: "munirchittagong@gmail.com"

	def order_confirmation order
		@order = order
		mail to: order.user.email, subject: "Your order (##{order.id})"
	end

end