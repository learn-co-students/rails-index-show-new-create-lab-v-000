class CouponsController < ApplicationController
  def new
  end

  def index
    @coupons = Coupon.all
  end

  def create
  end

  def show
  end
end
