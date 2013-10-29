Rails.configuration.stripe = {


  
  :publishable_key => ENV['pk_test_e3m9e3RoRew11vPH0hS6Pfkv'],
  :secret_key      => ENV['sk_test_ZXmRrGWE6grWtUlQrKCFGadQ']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]