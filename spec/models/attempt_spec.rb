require 'rails_helper'

user = User.new
card = Card.new

describe Attempt do
  it 'is valid with a user, card, and response' do
    attempt = Attempt.new(response: 'test', user: user, card: card)
    expect(attempt).to be_valid
  end
  it 'is invalid without a user' do
    attempt = Attempt.new(response: 'test', card: card)
    expect(attempt).not_to be_valid
  end
  it 'is invalid without a card' do
    attempt = Attempt.new(response: 'test', user: user)
    expect(attempt).not_to be_valid
  end
  it 'is invalid without a response' do
    attempt = Attempt.new(user: user, card: card)
    expect(attempt).not_to be_valid
  end
end