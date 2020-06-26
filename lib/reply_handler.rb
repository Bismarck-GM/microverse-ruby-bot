require_relative 'text_matching'

module ReplyHandler

  def empty_help(tweet)
    @empty_help.each do |i|
      return true if /\b#{i}\b/i.match?(tweet.text) || tweet.text == "@BenderBot101"
    end
    false
  end
  def question(tweet)
    return true if /[?]/i.match?(tweet.text)
    false
  end
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
  def hypnotoad(tweet)
    @hypnotoad.each do |i|
      return true if /\b#{i}\b/i.match?(tweet.text)
    end
    false
  end
end
