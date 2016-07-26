require 'rails_helper'

describe CouponsController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new coupon" do
        expect{
          post :create, { :coupon => { :coupon_code => "ASD123", :store => "Dean and Deluca" } }
        }.to change(Coupon,:count).by(1)
      end

      it "redirects to the new coupon" do
        post :create, { :coupon => { :coupon_code => "ASD123", :store => "Dean and Deluca" } }
        expect(response).to redirect_to Coupon.last
      end
    end
  end

end

# Prefix Verb   URI Pattern                 Controller#Action                                                                                                                           
#     coupons GET    /coupons(.:format)          coupons#index
#             POST   /coupons(.:format)          coupons#create
#  new_coupon GET    /coupons/new(.:format)      coupons#new
# edit_coupon GET    /coupons/:id/edit(.:format) coupons#edit
#      coupon GET    /coupons/:id(.:format)      coupons#show
#             PATCH  /coupons/:id(.:format)      coupons#update
#             PUT    /coupons/:id(.:format)      coupons#update
#             DELETE /coupons/:id(.:format)      coupons#destroy
