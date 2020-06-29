require 'rubygems'
require 'chatterbot/dsl'
require 'dotenv'
require_relative '../lib/reply_handler.rb'
require_relative '../lib/tweets_handler.rb'
require_relative '../lib/card_links.rb'

#
# this is the script for the twitter bot BenderBot101
# generated on 2020-06-24 18:30:05 -0300
#
Dotenv.load('keys.env')

consumer_key ENV['KEY1']
consumer_secret ENV['KEY2']
secret ENV['KEY3']
token ENV['KEY4']

# remove this to send out tweets
debug_mode

# remove this to update the db
no_update
# remove this to get less output when running
verbose

trivia_post_counter = 0

loop do
  replies do |tweet|
    if empty_help?(tweet)
      reply("Hey #USER# here's a list of what beautiful witty Bender can do
        \n - Drink/Beer \n - Go to heaven \n - Go to Hell \n - Hypnotoad \n - Ask me something #{@help}", tweet)
      favorite(tweet)

    elsif question?(tweet)
      reply("Hey #USER# ain't nobody got time for your questions.\nIf you need help just say it. #{@question}", tweet)
      favorite(tweet)

    elsif tohell?(tweet)
      reply("Why you do this to me #USER# ??? #{@go_to_hell}", tweet)
      favorite(tweet)

    elsif idolize?(tweet)
      reply("I know #USER# loves me. But I must fly away. #{@go_to_heaven}", tweet)
      favorite(tweet)

    elsif hypnotoad?(tweet)
      reply("Hey #USER# that reminded me of my Master: #{@hypnotoad}", tweet)
      favorite(tweet)

    else
      reply(
        "Yeah well. \n I'm going to build my own theme park...
        with Jackpot and Hookers \n IN FACT \n Forget the park. #{@no_match}", tweet
      )
    end
  end
  if trivia_post_counter == 720
    tweet("#{@quote_num} Did you know?: #{@quote} #{@trivia_link}")
    trivia_post_counter = 0
  end
  sleep 60
  trivia_post_counter += 1
end
