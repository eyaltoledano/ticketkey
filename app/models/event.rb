class Event < ApplicationRecord
  belongs_to :brand
  has_many :tickets
  belongs_to :venue
end
