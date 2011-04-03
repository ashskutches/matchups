# Use this hook to configure devise mailer, warden hooks and so forth. The first
# four configuration values can also be set straight in your models.
Devise.setup do |config|
  # Configure the e-mail address which will be shown in DeviseMailer.
  config.mailer_sender = "matchups@heroku.com"
  config.omniauth :facebook, "200476873308924", "76fcbaea6c8b82646e1ba85a56b27a98"
  OmniAuth.config.test_mode = false

  require 'devise/orm/active_record'


end
