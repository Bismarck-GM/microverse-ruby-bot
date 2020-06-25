require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "ilnnXut2TjaRP9fKQWZV9lvKt"
  config.consumer_secret     = "4plFn9HZG4kqlfxdeApTEvRwblLnxbJAoPGR4LgA5iAYmBlP7R"
  config.access_token        = "1275896004815044612-nJkqM0nZWEqYSD8ZNtycsZknGPq8Gt"
  config.access_token_secret = "0QhzCg6SSdiHwBAlYrNQaEd4bueE7Xt6VuiHsfcgbyImK"
end

adorni_quotes = []

adorni_quotes << client.user_timeline("Manuel Adorni")

p adorni_quotes

p client.user_timeline(50404817)

puts client.status(1275838310120697858).text

p client.user(50404817)

p trends()