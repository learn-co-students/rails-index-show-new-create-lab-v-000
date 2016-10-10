require 'rails_helper'

describe Coupon do
  before(:each) do
    @coupon = Coupon.create!(coupon_code: "FREESTUFF", store: "Chipotle")
  end

  it 'can be created' do
    expect(@coupon).to be_valid
  end

  it 'knows its coupon code' do
    expect(@coupon.coupon_code).to eq("FREESTUFF")
  end

  it 'knows its store' do
    expect(@coupon.store).to eq("Chipotle")
  end

end
