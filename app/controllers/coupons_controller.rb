class CouponsController < ApplicationController

	def index
		@coupons = Coupon.all	
	end

	def new

	end

	def show
		@coupon = Coupon.find(params[:id])
	end

	def create
		# binding.pry
		@coupon = Coupon.new(store: params[:store], coupon_code: params[:coupon_code])
		# binding.pry
		@coupon.save
		
		redirect_to @coupon
	end

end