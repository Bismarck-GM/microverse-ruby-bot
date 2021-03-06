require_relative 'spec_helper'
require_relative '../lib/reply_handler.rb'

class Tweet
  attr_reader :text, :id
  def initialize(text, id)
    @text = text
    @id = id
  end
end

describe '#empty_help?' do
  include ReplyHandler
  let(:tweet) { Tweet.new('help', 0o0000000001) }
  let(:tweet2) { Tweet.new('hello dude', 0o0000000001) }
  let(:arr) { [1, 2, 3] }
  it 'Should return True if the txt field of the Tweet object contain string' do
    expect(empty_help?(tweet)).to eql(true)
  end

  it 'Should return False if the txt field of the Tweet object does not contain string' do
    expect(empty_help?(tweet2)).to eql(false)
  end

  it 'Should raise ScriptError if argument is not a Tweet Object' do
    expect { empty_help?(arr) }.to raise_error(ScriptError)
  end
end

describe '#question?' do
  include ReplyHandler
  let(:tweet) { Tweet.new('Are you sure about it?', 0o0000000001) }
  let(:tweet2) { Tweet.new('hello dude', 0o0000000001) }
  let(:arr) { [1, 2, 3] }
  it "Should return True if the txt field of the Tweet object contain string for '?' in any position" do
    expect(question?(tweet)).to eql(true)
  end

  it "Should return False if the txt field of the Tweet object does not contain string '?'" do
    expect(question?(tweet2)).to eql(false)
  end

  it 'Should raise ScriptError if argument is not a Tweet Object' do
    expect { question?(arr) }.to raise_error(ScriptError)
  end
end

describe '#idolize?' do
  include ReplyHandler
  let(:tweet) { Tweet.new('heaven', 0o0000000001) }
  let(:tweet2) { Tweet.new('hello dude', 0o0000000001) }
  let(:arr) { [1, 2, 3] }
  it 'Should return True if the txt field of the Tweet object contains any of the Strings List' do
    expect(idolize?(tweet)).to eql(true)
  end

  it 'Should return False if the txt field of the Tweet object does not contains any of the Strings List' do
    expect(idolize?(tweet2)).to eql(false)
  end

  it 'Should raise ScriptError if argument is not a Tweet Object' do
    expect { idolize?(arr) }.to raise_error(ScriptError)
  end
end

describe '#tohell?' do
  include ReplyHandler
  let(:tweet) { Tweet.new('hell', 0o0000000001) }
  let(:tweet2) { Tweet.new('hello dude', 0o0000000001) }
  let(:arr) { [1, 2, 3] }
  it 'Should return True if the txt field of the Tweet object contains any of the Strings List' do
    expect(tohell?(tweet)).to eql(true)
  end

  it 'Should return False if the txt field of the Tweet object does not contains any of the Strings List' do
    expect(tohell?(tweet2)).to eql(false)
  end

  it 'Should raise ScriptError if argument is not a Tweet Object' do
    expect { tohell?(arr) }.to raise_error(ScriptError)
  end
end

describe '#hypnotoad?' do
  include ReplyHandler
  let(:tweet) { Tweet.new('hypnosis', 0o0000000001) }
  let(:tweet2) { Tweet.new('hello dude', 0o0000000001) }
  let(:arr) { [1, 2, 3] }
  it 'Should return True if the txt field of the Tweet object contains any of the Strings List' do
    expect(hypnotoad?(tweet)).to eql(true)
  end

  it 'Should return False if the txt field of the Tweet object does not contains any of the Strings List' do
    expect(hypnotoad?(tweet2)).to eql(false)
  end

  it 'Should raise ScriptError if argument is not a Tweet Object' do
    expect { hypnotoad?(arr) }.to raise_error(ScriptError)
  end
end
