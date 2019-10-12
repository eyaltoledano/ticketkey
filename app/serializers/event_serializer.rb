class EventSerializer < ActiveModel::Serializer
  has_one :venue
  belongs_to :brand, serializer: EventBrandSerializer

  attributes :id, :name, :category, :date_start, :date_end, :total_available_tickets
  attribute :available_tickets, if: :available_tickets?

  def available_tickets
    object.available_tickets
  end

  def total_available_tickets
    object.total_available_tickets
  end

  def available_tickets?
    true if (total_available_tickets > 0)
  end

end
