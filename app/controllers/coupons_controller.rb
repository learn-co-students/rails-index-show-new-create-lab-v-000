class CouponsController < ApplicationController
  
  def create
  #   @student = Student.new(first_name: params[:first_name], last_name: params[:last_name])
	 # @student.save
	 # redirect_to student_path(@student)
  end
  
  def index
    @coupons = Coupon.all
  end

end
