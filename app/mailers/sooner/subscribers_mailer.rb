module Sooner
  class SubscribersMailer < ActionMailer::Base
    default from: Sooner.sooner_mail
  
    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.subscribers_mailer.subscribed.subject
    #
    def subscribed(user)
      mail to: user.email
    end
  end
end
