class CouponController < ApplicationController

  def index
    @coupon = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@coupon)
  end

end
