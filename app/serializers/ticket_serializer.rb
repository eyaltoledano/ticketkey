class TicketSerializer < ActiveModel::Serializer
  attributes :id, :price, :description, :seating_info, :valid_start, :valid_end, :status
  belongs_to :event
  has_one :venue, through: :event

end
