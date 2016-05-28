class Bot < ActiveRecord::Base

  def self.send_tweet
    text = TokenPhrase.generate(' ', numbers: false)
    CLIENT.update(text)
  end
end
