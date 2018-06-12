# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coupon.create(coupon_code: "FREETHINGSNOW", store: "Forever XXI")
Coupon.create(coupon_code: "COFFEEFORDAYS", store: "Peets")
Coupon.create(coupon_code: "YOTENGOHAMBRE", store: "Taco Bell")
