class Venue < ApplicationRecord
  has_many :events
  has_many :tickets, through: :events
end
