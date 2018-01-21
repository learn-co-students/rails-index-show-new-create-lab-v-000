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
    @coupon = Coupon.new
    @coupon[:coupon_code] = params[:coupon_code]
    @coupon[:store] = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon) #coupon_path = acessing a specific coupon / coupons_path accessing the entire index
  end
end
# The form should be wired up to the create action in the controller and, when submitted,
# should create a new record in the coupons table with the parameters passed through the form.
