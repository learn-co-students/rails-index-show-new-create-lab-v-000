class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    @coupon = Coupon.new(coupon_code:
                       params[:coupon][:coupon_code],
                         store: params[:coupon][:store]
                      )

    if @coupon.save
      redirect_to coupon_path(@coupon)
    else
      render :new
    end
  end


end
