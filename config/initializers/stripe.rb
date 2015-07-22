Rails.configuration.stripe = {
  :publishable_key => "pk_test_oxYzMN2bUL9Sy0NdklQkZBaL",
  :secret_key      => "sk_test_ViF0RaCc94XJOZqdvsnl6AOc"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
