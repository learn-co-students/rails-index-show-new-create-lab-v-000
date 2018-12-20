require 'rails_helper'

RSpec.describe "coupons/new", type: :view do
  before(:each) do
    assign(:coupon, Coupon.new())
  end

  it "renders new coupon form" do
    render

    assert_select "form[action=?][method=?]", coupons_path, "post" do
    end
  end
end
