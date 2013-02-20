Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, APP_CONFIG["consumer_key"], APP_CONFIG["consumer_secret"]
end