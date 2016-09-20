require 'rails_helper'

user = User.new(email:"a@b.com")

describe Deck do
  it "is is valid with a name and user" do
    deck = Deck.new(name: 'Test', user: user)
    expect(deck).to be_valid
  end
  it "is invalid without a name" do
    deck = Deck.new(user: user)
    expect(deck).not_to be_valid
  end
  it "is invalid without a user" do
    deck = Deck.new(name: 'Test')
    expect(deck).not_to be_valid
  end
end