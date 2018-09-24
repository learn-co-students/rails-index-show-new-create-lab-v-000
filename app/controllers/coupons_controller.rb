class CouponsController < ApplicationController
    before_action :get_post, only: [:show]

    def index
        @coupons = Coupon.all
    end

    def show

    end

    def new

    end

    def create
        c = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        redirect_to coupon_path(c)
    end

    def delete

    end

    private

    def get_post
        @coupon = Coupon.find_by(id: params[:id])
    end
end