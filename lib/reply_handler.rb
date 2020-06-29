require_relative 'text_matching.rb'

module ReplyHandler
  def empty_help?(tweet)
    raise ScriptError.new, 'Only Tweet-Object in #empty_help' if tweet.is_a?(Array)

    ['help', 'what can you do', 'assistance', 'aid', 'support'].each do |i|
      return true if /\b#{i}\b/i.match?(tweet.text) || tweet.text == '@BenderBot101'
    end
    false
  end

  def question?(tweet)
    raise ScriptError.new, 'Only Tweet-Object in #question' if tweet.is_a?(Array)

    return true if /[?]/i.match?(tweet.text)

    false
  end

  def insulted?(tweet)
    raise ScriptError.new, 'Only Tweet-Object in #insulted' if tweet.is_a?(Array)

    tweet.text.split(/ /).each do |i|
      return true if /\b#{i}\b/i.match?(@bad_words)
    end
    false
  end

  def idolize?(tweet)
    raise ScriptError.new, 'Only Tweet-Object in #idolize' if tweet.is_a?(Array)

    ['heaven', 'go to heaven', 'you angel', "you're an angel", 'saint'].each do |i|
      return true if /\b#{i}\b/i.match?(tweet.text)
    end
    false
  end

  def tohell?(tweet)
    raise ScriptError.new, 'Only Tweet-Object in #tohell' if tweet.is_a?(Array)

    ['hell', 'go to hell', 'you devil', "you're a demon", 'demon', 'bad robot', 'i hate you'].each do |i|
      return true if /\b#{i}\b/i.match?(tweet.text)
    end
    false
  end

  def hypnotoad?(tweet)
    raise ScriptError.new, 'Only Tweet-Object in #hypnotoad' if tweet.is_a?(Array)

    %w[hypnotoad hypnosis brainwash hypno hypnotizability hypnotherapists hypnotizations hypnotisations].each do |i|
      return true if /\b#{i}\b/i.match?(tweet.text)
    end
    false
  end
end
