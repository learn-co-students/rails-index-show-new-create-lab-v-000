class CouponsController < ApplicationController

	def index
		@coupons = Coupon.all
	end

	def show
		@coupon = Coupon.find(params[:id])
	end

	def new
	end

	def create
		@coupon = Coupon.create
		@coupon[:coupon_code] = params[:coupon_code]
		@coupon[:store] = params[:store]
		@coupon.save
		redirect_to coupon_path(@coupon)
	end
	# use the redirect_to helper method to redirect the user to the show page template for the newly created coupon
end