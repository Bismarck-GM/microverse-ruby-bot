#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'
require_relative 'reply_handler'

include Reply
#
# this is the script for the twitter bot HolidayBot1
# generated on 2020-06-24 18:30:05 -0300
#

consumer_key 'ilnnXut2TjaRP9fKQWZV9lvKt'
consumer_secret '4plFn9HZG4kqlfxdeApTEvRwblLnxbJAoPGR4LgA5iAYmBlP7R'

secret '0QhzCg6SSdiHwBAlYrNQaEd4bueE7Xt6VuiHsfcgbyImK'
token '1275896004815044612-nJkqM0nZWEqYSD8ZNtycsZknGPq8Gt'

# remove this to send out tweets
debug_mode

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

loop do

  replies do |tweet|
    if insulted(tweet.text)
      reply "#USER# I don't get what are you trying to say", tweet
    else
      reply "Yes #USER#, you are very kind to say that!", tweet
    end
  end

  sleep 60
end



# bot = Chatterbot::Bot.new
# bot.debug_mode
# bot.replies do |tweet|
#   if tweet.text.include?('Hey')
#     reply "#USER# I don't get what are you trying to say", tweet
#   else
#     reply "Yes #USER#, you are very kind to say that!", tweet
#   end
# end
