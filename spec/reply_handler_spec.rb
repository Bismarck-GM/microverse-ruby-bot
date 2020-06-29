require 'spec_helper'
require '../lib/reply_handler.rb'

include ReplyHandler

class Tweet
  attr_reader :text, :id
  def initialize(text, id)
    @text = text
    @id = id
  end
end

describe '#empty_help' do
  let(:tweet) { Tweet.new('help', 00000000001) }
  let(:tweet2) { Tweet.new('hello dude', 00000000001) }
  let(:arr) { [1, 2, 3] }
  it 'Should return True if the txt field of the Tweet object contain string for help or only contains the name of the Bot' do
    expect(empty_help(tweet)).to eql(true)
  end
  
  it 'Should return False if the txt field of the Tweet object does not contain string for help or the name of the Bot' do
    expect(empty_help(tweet2)).to eql(false)
  end
  
  it 'Should raise ScriptError if argument is not a Tweet Object' do
    expect { empty_help(arr) }.to raise_error(ScriptError)
  end
end

describe '#question' do
  let(:tweet) { Tweet.new('Are you sure about it?', 00000000001) }
  let(:tweet2) { Tweet.new('hello dude', 00000000001) }
  let(:arr) { [1, 2, 3] }
  it "Should return True if the txt field of the Tweet object contain string for '?' in any position" do
    expect(question(tweet)).to eql(true)
  end

  it "Should return False if the txt field of the Tweet object does not contain string '?'" do
    expect(question(tweet2)).to eql(false)
  end
  
  it 'Should raise ScriptError if argument is not a Tweet Object' do
    expect { empty_help(arr) }.to raise_error(ScriptError)
  end
end

describe '#idolize' do
  let(:tweet) { Tweet.new('heaven', 00000000001) }
  let(:tweet2) { Tweet.new('hello dude', 00000000001) }
  let(:arr) { [1, 2, 3] }
  it "Should return True if the txt field of the Tweet object contains any of the Strings List" do
    expect(idolize(tweet)).to eql(true)
  end

  it "Should return False if the txt field of the Tweet object does not contains any of the Strings List" do
    expect(idolize(tweet2)).to eql(false)
  end
  
  it 'Should raise ScriptError if argument is not a Tweet Object' do
    expect { empty_help(arr) }.to raise_error(ScriptError)
  end
end

describe '#tohell' do
  let(:tweet) { Tweet.new('hell', 00000000001) }
  let(:tweet2) { Tweet.new('hello dude', 00000000001) }
  let(:arr) { [1, 2, 3] }
  it "Should return True if the txt field of the Tweet object contains any of the Strings List" do
    expect(tohell(tweet)).to eql(true)
  end

  it "Should return False if the txt field of the Tweet object does not contains any of the Strings List" do
    expect(tohell(tweet2)).to eql(false)
  end

  it 'Should raise ScriptError if argument is not a Tweet Object' do
    expect { empty_help(arr) }.to raise_error(ScriptError)
  end
end

describe '#hypnotoad' do
  let(:tweet) { Tweet.new('hypnosis', 00000000001) }
  let(:tweet2) { Tweet.new('hello dude', 00000000001) }
  let(:arr) { [1, 2, 3] }
  it "Should return True if the txt field of the Tweet object contains any of the Strings List" do
    expect(hypnotoad(tweet)).to eql(true)
  end

  it "Should return False if the txt field of the Tweet object does not contains any of the Strings List" do
    expect(hypnotoad(tweet2)).to eql(false)
  end

  it 'Should raise ScriptError if argument is not a Tweet Object' do
    expect { empty_help(arr) }.to raise_error(ScriptError)
  end
end