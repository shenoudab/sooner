Sooner.setup do |config|
  # Configure the e-mail address which will be shown in SoonerMailer.
  config.mailer_sender = "info@sooner.com"

  config.name_validations = true
  config.db_store = true
  config.csv_store = true
  config.csv_file = "subscribers.csv"

  # Messages.
  config.subscribed = 'Subscribed Successfully.'
  config.already_subscribed = 'Already Subscribed.'
  config.error_subscribed = 'Please Try to subscribe again.'
end