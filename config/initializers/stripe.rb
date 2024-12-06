Rails.configuration.stripe = {
    publishable_key: 'pk_test_51QT8EJHlUGNWkPskpx9VyUZAW0QKNiYNcCLzzDubhjT2ZBRfolF4NHxg08pmFb2W2tqiXntAu2YoXfsqiWNMBecn00Fh9hqh8Y',
    secret_key: 'sk_test_51QT8EJHlUGNWkPskp4RRScRm24xsXXIPTLJVJapLMf3ksX6rTeAQ1jwMcpQaT5UwUoF86zBXDdv0IHVnPBMsc1ZU00PzLUC3kU'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]