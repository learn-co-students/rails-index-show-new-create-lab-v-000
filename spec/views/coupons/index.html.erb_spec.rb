require 'rails_helper'

RSpec.describe "coupons/index", type: :view do
  before(:each) do
    assign(:coupons, [
      Coupon.create!(),
      Coupon.create!()
    ])
  end

  it "renders a list of coupons" do
    render
  end
end
