Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["TWITTER_CLIENT_ID_RF"], ENV['TWITTER_CLIENT_SECRET_RF']
end
