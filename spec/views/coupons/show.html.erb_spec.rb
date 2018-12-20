require 'rails_helper'

RSpec.describe "coupons/show", type: :view do
  before(:each) do
    @coupon = assign(:coupon, Coupon.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
