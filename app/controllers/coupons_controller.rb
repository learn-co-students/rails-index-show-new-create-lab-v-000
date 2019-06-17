class CouponsController < ApplicationController
    def index 
        @coupons = coupons.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
    end

    def create
        @coupon = Student.new
        @student.first_name = params[:first_name]
        @student.last_name = params[:last_name]
        @student.save
        redirect_to student_path(@student)
    end
    
    
end