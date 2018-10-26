class CouponsController < ApplicationController
	def index
		@coupons = Coupon.all
	end

	def show
		@coupons = Coupon.find(params[:id])
	end

	def new
	end

	def create
		@coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
		redirect_to coupon_path
	end

end