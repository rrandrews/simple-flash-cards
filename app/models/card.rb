class Card < ApplicationRecord
  belongs_to :deck
  has_many :responses

  validates :prompt, presence: true
end
