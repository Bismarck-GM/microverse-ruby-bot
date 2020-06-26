#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'
require './lib/reply_handler'

include ReplyHandler
#
# this is the script for the twitter bot BenderBot101
# generated on 2020-06-24 18:30:05 -0300
#

consumer_key 'ilnnXut2TjaRP9fKQWZV9lvKt'
consumer_secret '4plFn9HZG4kqlfxdeApTEvRwblLnxbJAoPGR4LgA5iAYmBlP7R'

secret '0QhzCg6SSdiHwBAlYrNQaEd4bueE7Xt6VuiHsfcgbyImK'
token '1275896004815044612-nJkqM0nZWEqYSD8ZNtycsZknGPq8Gt'

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

# search "keyword" do |tweet|
#  reply "Hey #USER# nice to meet you!", tweet
# end
bite_my_ass = 'https://raw.githack.com/Bismarck-GM/microverse-ruby-bot/base-bot-template/responses_links/bitemyass.html'
go_to_heaven = 'https://raw.githack.com/Bismarck-GM/microverse-ruby-bot/base-bot-template/responses_links/gotoheaven.html'
trivia_post_counter = 0

loop do

  replies do |tweet|
    if insulted(tweet)
      reply("Hey #USER# you can: #{bite_my_ass}", tweet)
      
    elsif idolize(tweet)
      reply("I know #USER# loves me. But I must fly away. #{go_to_heaven}", tweet)
      p tweet
    end
  end

  sleep 60
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
