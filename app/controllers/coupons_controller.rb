class CouponsController < ApplicationController
  before_action :all, only: [:index, :show]

  def index
    @coupons
  end

  def new
  end

  def show
     @coupon = @coupons.find(params[:id])
  end

  def create
    @coupon = Coupon.create(store:params[:coupon][:store], coupon_code:params[:coupon][:coupon_code])
    redirect_to coupon_path(@coupon)
  end



private

  def all
      @coupons ||= Coupon.all
  end

end
