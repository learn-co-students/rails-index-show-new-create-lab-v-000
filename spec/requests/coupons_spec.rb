require 'rails_helper'

RSpec.describe "Coupons", :type => :request do
  describe "GET /coupons" do
    it "works! (now write some real specs)" do
      get coupons_path
      expect(response.status).to be(200)
    end
  end
end
