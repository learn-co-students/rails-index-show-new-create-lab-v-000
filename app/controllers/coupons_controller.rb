class CouponsController < ApplicationController
	# def index
	# end

	def new
	end

	def show
		@coupon = Coupon.find(params[:id])
	end

	def create
	end
	
end
