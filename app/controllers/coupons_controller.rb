class CouponsController < ApplicationController
  # before_action :set_coupon, only: [:show, :edit, :update, :destroy]
  
  def index
    @coupons = Coupon.all
  end

  def show
    set_coupon
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@coupon)
  end

  # PATCH/PUT /coupons/1
  # PATCH/PUT /coupons/1.json
  # def update
  #   respond_to do |format|
  #     if @coupon.update(coupon_params)
  #       format.html { redirect_to @coupon, notice: 'Coupon was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @coupon }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @coupon.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /coupons/1
  # # DELETE /coupons/1.json
  # def destroy
  #   @coupon.destroy
  #   respond_to do |format|
  #     format.html { redirect_to coupons_url, notice: 'Coupon was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coupon
      @coupon = Coupon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coupon_params
      params.require(:coupon).permit(:coupon_code, :store)
    end
end
