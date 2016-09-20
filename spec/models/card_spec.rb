require 'rails_helper'

deck = Deck.new

describe Card do
  it "is valid with a deck and prompt" do
    card = Card.new(prompt: 'test', deck: deck)
    expect(card).to be_valid
  end
  it 'is invalid without a deck' do
    card = Card.new(prompt: 'test')
    expect(card).not_to be_valid
  end
  it 'is invalid without a prompt' do
    card = Card.new(deck: deck)
    expect(card).not_to be_valid
  end
end