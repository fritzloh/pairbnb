OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['pusher_key'], ENV['pusher_secret'],
  :scope => 'email', :display => 'popup', :info_fields => 'name,email'
end