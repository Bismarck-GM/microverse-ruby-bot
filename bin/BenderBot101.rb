#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'
require './lib/reply_handler'
require './lib/tweets_handler'
require './lib/card_links'

include ReplyHandler
include TriviaPicker

#
# this is the script for the twitter bot BenderBot101
# generated on 2020-06-24 18:30:05 -0300
#

consumer_key 'jAw6wd16umXQkf0vlshf7nEEL'
consumer_secret 'Hdhg62x7yv4ks3zNmamA0jjPSAf62tIBDiYbsPsDMPZvUH1Jei'

secret 'qkq0Oh3jX0NTp7wMAJbFRHo18PojPjDiv4rwZ11lIIaZr'
token '1275896004815044612-JQ2nU7h1khNi6oKqZAa72B0MXseZ3m'

# remove this to send out tweets
# debug_mode

# remove this to update the db
no_update
# remove this to get less output when running
verbose

# here's a list of users to ignore
blacklist "abc", "def"

# here's a list of things to exclude from searches
exclude "hi", "spammer", "junk"


trivia_post_counter = 0

loop do

  replies do |tweet|
    p tweet.text

    if empty_help(tweet)
      reply("Hey #USER# here's a list of what beautiful witty Bender can do
        \n - Drink/Beer \n - Go to heaven \n - Go to Hell \n - Hypnotoad \n - Ask me something  #{@help}", tweet)
      favorite(tweet)

    elsif question(tweet)
      reply("Hey #USER# ain't nobody got time for your questions. \n If you need help just say it. #{question}", tweet)
      favorite(tweet)

    elsif tohell(tweet)
      reply("Why you do this to me #USER# ??? #{go_to_hell}", tweet)
      favorite(tweet)

    elsif idolize(tweet)
      reply("I know #USER# loves me. But I must fly away. #{go_to_heaven}", tweet)
      favorite(tweet)

    elsif hypnotoad(tweet)
      reply("That reminded me of my Master: #{hypnotoad}", tweet)
      favorite(tweet)

    elsif insulted(tweet)
      reply("Hey #USER# you can: #{bite_my_ass}", tweet)
      favorite(tweet)
    else
      reply("Yeah well. \n I'm going to build my own theme park... with Jackpot and Hookers \n IN FACT \n Forget the park. #{no_match}" , tweet)
    end
  end
  if trivia_post_counter == 4320
    trivia_quote_sorter()
    tweet("#{@quoteN} Did you know?: #{@quote} #{trivia_link}")
    trivia_post_counter = 0
  end
  sleep 10
  trivia_post_counter += 1
end

# Add: hypnotoad, green head sucking thingy, revolution, shut up and take my money, not sure, fry, devil, beer, question function
# helper function with blank test 'help' 'what'
# Like the good ones. Try to sort the 'fav' function within chatterbot or twitter gem
# See if there's a way to be called and read the main twitt you were called upon and tag that user
# Create an array of diferent post and grab one randomly every 12hs. Maybe try shuffle the array or just fetch 1st item, take it out and
# put it on the back of the array again.
# Make tests for all the functions

# bot = Chatterbot::Bot.new
# bot.debug_mode
# bot.replies do |tweet|
#   if tweet.text.include?('Hey')
#     reply "#USER# I don't get what are you trying to say", tweet
#   else
#     reply "Yes #USER#, you are very kind to say that!", tweet
#   end
# end
