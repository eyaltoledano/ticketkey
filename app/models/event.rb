class Event < ApplicationRecord
  belongs_to :brand
  has_many :tickets
end
