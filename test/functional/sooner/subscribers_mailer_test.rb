require 'test_helper'

module Sooner
  class SubscribersMailerTest < ActionMailer::TestCase
    test "subscribed" do
      mail = SubscribersMailer.subscribed
      assert_equal "Subscribed", mail.subject
      assert_equal ["to@example.org"], mail.to
      assert_equal ["from@example.com"], mail.from
      assert_match "Hi", mail.body.encoded
    end
  
  end
end
