class CouponsController < ApplicationController

	# def setup
 #    @controller = PostController.new
 #  end

	def index
		@coupons = Coupon.all	
	end

	def new

	end

	def create
		@coupon = Coupon.new(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
		@coupon.save
		redirect_to coupons_path
	end

end