class CouponsController < ApplicationController
	def index
		@coupons = Coupon.all
	end

	def show
		@coupon = Coupon.find(params[:id])
	end

	def new
		@coupon = Coupon.new
	end
		
	

	def create
		@coupon = Coupon.create(coupon_params)
		#I am so confused
		redirect_to coupon_path(@coupon)
	end

	

	private

	def coupon_params
		{coupon_code: params[:coupon_code], store: params[:store]}
		#params.require(:coupon).permit(:coupon_code, :store)
	end





end