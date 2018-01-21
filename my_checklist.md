I.DB table
  A. create coupons table -x
    1)coupon_code  -x
    2)store       -x
  B. Migrate      -x
II.Stub Out MVC
   A.Model     -x
     coupon    -x
   B.Views
     1)index    -x
       a.)includes coupon_codes/stores
       b.)links coupons to show page via link_to
     2)new      -x
       a)should render new form using form_tag
     3)show     -x
       a.) should render specific coupon
    C.Controllers
     1)coupons_controller
       a) needs to redirect to helper method to redirect to show.
  III.Config
    A.routes -x
