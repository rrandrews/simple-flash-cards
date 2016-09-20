require 'rails_helper'

card = Card.new

describe Response do
  it "is valid with a card and a response" do
    response = Response.new(response: 'test', card: card)
    expect(response).to be_valid
  end
  it 'is invalid without a card' do
    response = Response.new(response: 'test')
    expect(response).not_to be_valid
  end
  it 'is invalid without a response' do
    response = Response.new(card: card)
    expect(response).not_to be_valid
  end
end