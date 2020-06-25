module Reply_handler

  def insulted(tweet)
    bite_my_ass = "https://raw.githack.com/Bismarck-GM/microverse-ruby-bot/base-bot-template/responses_links/bitemyass.html"
    if tweet.text.include?("Hey")
      reply("Hey #USER# you can: #{bite_my_ass}", tweet)
    end
  end
end