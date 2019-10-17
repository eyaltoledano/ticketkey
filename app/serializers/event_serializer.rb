class EventSerializer < ActiveModel::Serializer
  belongs_to :venue
  belongs_to :brand, serializer: EventBrandSerializer

  attributes :id, :name, :category, :date_start, :date_end, :total_available_tickets, :total_tickets, :percent_sold
  attribute :available_tickets, if: :available_tickets?
  attribute :percent_sold #, if: :brand_has_tickets?

  def available_tickets
    object.available_tickets
  end

  def total_available_tickets
    object.total_available_tickets
  end

  def available_tickets?
    true if (total_available_tickets > 0)
  end

  def brand_has_tickets?
    true if object.tickets.count > 0
  end


end
