require_relative 'trivia_info.rb'

module TriviaPicker
  def trivia_quote_sorter(hash = @trivia_hash)
    raise ScriptError.new, 'Only hashes in trivia_quote_sorter' unless hash.is_a?(Hash)

    if hash.empty?
      @trivia_hash = @quote_history
      @quote_history = {}
    end
    @quote = hash.values.sample
    @quote_num = hash.key(@quote)
    quote_block = Hash[@quote_num, @quote]
    @quote_history.merge!(quote_block)
    @trivia_hash.delete(@quote_num)
  end
end
