class CouponsController < ApplicationController
	def create
		coupon_ = Coupon.new
		coupon_.store = params[:coupon][:store]
		coupon_.coupon_code = params[:coupon][:coupon_code]
		coupon_.save
		redirect_to coupon_path(coupon_)
	end

	def index
		@coupons = Coupon.all
	end

	def new
		
	end

	def show
		@coupon = Coupon.find_by_id(params[:id])
	end
end
