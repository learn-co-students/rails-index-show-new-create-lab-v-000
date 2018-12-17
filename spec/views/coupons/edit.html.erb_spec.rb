require 'rails_helper'

RSpec.describe "coupons/edit", type: :view do
  before(:each) do
    @coupon = assign(:coupon, Coupon.create!())
  end

  it "renders the edit coupon form" do
    render

    assert_select "form[action=?][method=?]", coupon_path(@coupon), "post" do
    end
  end
end
