class Response < ApplicationRecord
  belongs_to :card

  validates :response, presence: true
end
