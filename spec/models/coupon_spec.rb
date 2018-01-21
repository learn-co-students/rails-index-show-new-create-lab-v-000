require 'rails_helper'

RSpec.describe Coupon, :type => :model do
  it 'can be slugged' do
    x = Coupon.create(coupon_code: "13413%!1$!", store: "Jango")
    expect(x.slug).to eq(x.store + " -- " + x.coupon_code)
  end
end
