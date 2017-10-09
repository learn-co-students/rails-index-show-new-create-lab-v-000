def rand_word
  (0...8).map { (65 + rand(26)).chr }.join
end

30.times do
  Coupon.create(coupon_code:rand_word, store:rand_word)
end
