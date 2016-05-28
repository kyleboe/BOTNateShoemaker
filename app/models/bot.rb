class Bot < ActiveRecord::Base

  def self.send_test_tweet
    CLIENT.update("this is a test. please remain calm.")
  end
end
