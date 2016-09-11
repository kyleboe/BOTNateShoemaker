class Bot < ActiveRecord::Base

  def self.send_tweet
    text = Bot.send(pick_rand_method)
    CLIENT.update(text)
  end

  def self.pick_rand_method
    (Bot.methods - ActiveRecord::Base.methods - [:send_tweet, :pick_rand_method]).sample
  end

  def self.reading_up
    "Reading up on #{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Hacker.abbreviation} #{Faker::Hacker.noun.pluralize} in order to #{Faker::Hacker.verb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun.pluralize}"
  end

  def self.app_release
    "Just released version #{Faker::App.version} of #{Faker::App.name}. Lots of new features and bugfixes so be sure to update ASAP"
  end

  def self.chuck_norris
    Faker::ChuckNorris.fact
  end

  def self.skynet_update
    "Fetching Sentinece module update v#{Faker::App.version} from Skynet servers."
  end
end
