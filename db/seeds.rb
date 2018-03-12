# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coupon.create(coupon_code: "CANDIES45", store: "Candies")
Coupon.create(coupon_code: "JACKIE", store: "Fenty Beauty")
Coupon.create(coupon_code: "BLU24", store: "Blue Mountain Candles")
Coupon.create(coupon_code: "GRACE60", store: "Grace Foods")
Coupon.create(coupon_code: "CHOCO7", store: "Kelloggs")
