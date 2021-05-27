# frozen_string_literal: true

Rails.configuration.stripe = {
  publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
  secret_key: ENV['STRIPE_SECRET_KEY'],
  wh: ENV['STRIPE_WEBHOOK_SIGNING_SECRET']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
