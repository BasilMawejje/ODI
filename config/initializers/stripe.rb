#todo remove the key info from this file and have env variable
#todo recreate new api keys when do that
if Rails.env == 'production'
	Rails.configuration.stripe = {
		publishable_key: ENV['STRIPE_PUBLIC_KEY'],
		secret_key:      ENV['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		publishable_key: ENV['STRIPE_PUBLIC_KEY'],
		secret_key:      ENV['STRIPE_SECRET_KEY']
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
