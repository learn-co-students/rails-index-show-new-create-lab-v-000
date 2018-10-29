# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coupons = {
    1 => {
        store: "Mcdonalds",
        coupon_code: "AVEAIOM343A"
    },
    2 => {
        store: "Burger King", 
        coupon_code: "A927DB4342A"
    },
    3 => {
        store: "Lowes", 
        coupon_code: "737BBADK23"
    },
    4 => {
        store: "Taco Bell", 
        coupon_code: "XEWKNDKWL901D"}
}

coupons.each do |id, hash|
    coupon = Coupon.new
    hash.each do |attribute, value|
        coupon[attribute] = value
    end
    coupon.save
end