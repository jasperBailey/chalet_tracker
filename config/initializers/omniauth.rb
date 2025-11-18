Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], {
    scope: 'email, profile',
    prompt: 'select_account',  # Forces account selection for multiple accounts
    hd: 'madetech.com'  # Restricts login to a specific domain
  }
end