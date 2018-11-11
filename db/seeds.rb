# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coupons = Coupon.create([{coupon_code: "101", store: "store 1"},
{coupon_code: "102", store: "store 2"},
{coupon_code: "103", store: "store 2"},
{coupon_code: "104", store: "store 2"},
{coupon_code: "105", store: "store 3"},
{coupon_code: "106", store: "store 3"},
{coupon_code: "107", store: "store 1"}
    ]
)

