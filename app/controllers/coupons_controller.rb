class CouponsController < ApplicationController
  before_action :find_coupon, only: [:show, :edit, :delete, :update]
  before_action :coupon_params, only: :update
  def index
    @coupon = Coupon.all
  end

  def show
  end

  def new
  end

  def edit

  end

  def update

    if @coupon.update!(coupon_params)
      redirect_to coupon_path(@coupon)
    else
      redirect_to coupon_path
    end
  end

  def delete
    @coupon.destroy
    redirect_to coupon_path
  end

  def create
    @coupon = Coupon.create!(coupon_code: params[:coupon_code], store: params[:store])
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  private
    def find_coupon
      @coupon = Coupon.find(params[:id])
    end

    def coupon_params
      params.require(:coupon).permit(:coupon_code, :store)
    end
end
