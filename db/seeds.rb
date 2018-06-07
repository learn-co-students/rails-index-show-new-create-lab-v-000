# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
coupons = [
  {coupon_code: "000", store: "One"},
  {coupon_code: "000", store: "Two"},
  {coupon_code: "000", store: "Three"},
  {coupon_code: "000", store: "Four"},
  {coupon_code: "000", store: "Five"}
]

coupons.each {|s| Coupon.create(s)}