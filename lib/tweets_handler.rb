require_relative 'trivia_info'

module TriviaPicker
  def trivia_quote_sorter(hash=@trivia_hash)
    @quote = hash.values.sample
    @quoteN = hash.key(@quote)
    # quote_block = Hash[quoteN, quote]
    # @full_quote = quote_block.map { |k| k.join(' ') }
    # @full_quote = @full_quote[0]
  end
end
