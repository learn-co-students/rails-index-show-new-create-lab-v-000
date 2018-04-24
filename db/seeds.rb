# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coupon.create!(coupon_code: "FREESTUFF", store: "Chipotle")
Coupon.create!(coupon_code: "BATH", store: "Bath & Body Works")
Coupon.create!(coupon_code: "BEAUTY", store: "Sephora")
