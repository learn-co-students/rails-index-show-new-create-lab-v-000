class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    render 'coupons/index.html'
  end

  def show
    @coupon = Coupon.find(params[:id])
    render 'coupons/show'
  end

  def new
    render 'coupons/new'
  end

  def edit
    @coupon = Coupon.find(params[:id])
    render 'coupons/edit'
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    #redirect_to "/coupons/#{@coupon.id}"
    redirect_to coupon_path(@coupon)
  end

  def destroy
    @coupon.destroy
  end

  def concat(s1, s2)
    CouponsHelper.concat_strings(s1, s2)
  end

end
