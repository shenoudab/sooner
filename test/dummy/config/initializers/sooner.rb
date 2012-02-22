Sooner.setup do |config|
  # Configure the e-mail address which will be shown in SoonerMailer.
  config.sender_email = "info@sooner.com"
  # config.send_email = false  

  config.name_required = true
  config.mongo_store = true
  config.csv_store = true
  config.csv_file = "subscribers.csv"

  # Admin
  # config.admin_username = 'admin'
  # config.admin_password = 'admin'
  
  # Messages.
  config.subscribed = 'Subscribed Successfully.'
  config.already_subscribed = 'Already Subscribed.'
  config.error_subscribed = 'Please Try to subscribe again.'
end