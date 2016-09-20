class Attempt < ApplicationRecord
  belongs_to :user
  belongs_to :card

  validates :response, presence: true
end
