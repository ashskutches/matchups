# Use this hook to configure devise mailer, warden hooks and so forth. The first
# four configuration values can also be set straight in your models.
Devise.setup do |config|
  # Configure the e-mail address which will be shown in DeviseMailer.
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = { :host => 'matchups.heroku.com' }

  require 'devise/orm/active_record'


end
