class CouponsController < ApplicationController
  
  def create
  #   @student = Student.new(first_name: params[:first_name], last_name: params[:last_name])
	 # @student.save
	 # redirect_to student_path(@student)
  @coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
  @coupon.save
  redirect_to coupon_path(@coupon)
  end
  
  def index
    @coupons = Coupon.all
  end

  def show
  	@coupon = Coupon.find(params[:id])
  end

end
