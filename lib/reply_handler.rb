require_relative 'text_matching'

module ReplyHandler
  def insulted(tweet)
    @bad_words.each do |i|
      return true if /\b#{i}\b/i.match?(tweet.text)
    end
    false
  end
  def idolize(tweet)
    @go_to_heaven.each do |i|
      return true if /\b#{i}\b/i.match?(tweet.text)
    end
    false
  end
end
