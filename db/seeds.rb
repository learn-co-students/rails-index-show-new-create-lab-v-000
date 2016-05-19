# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coupons = Coupon.create([
  {coupon_code: 'ABC', store: 'Walmart'},
  {coupon_code: '123', store: 'Target'},
  {coupon_code: 'DEF', store: 'Walgreens'},
  {coupon_code: '456', store: 'RiteAid'}
  ])
