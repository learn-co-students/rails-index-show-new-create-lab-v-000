coupon_list = [
  [ "LOVE2019", "Target" ],
  [ "THANKS2018",  "Best Buy"],
  [ "SUMMERJOY19", "Dominos" ],
  [ "BOGO2018",  "Pizza Hut"]
]

coupon_list.each do |coupon_code, store|
  Coupon.create( coupon_code: coupon_code, store: store )
end