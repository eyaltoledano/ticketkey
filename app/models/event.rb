class Event < ApplicationRecord
  belongs_to :brand
  has_many :tickets
  belongs_to :venue

  def available_tickets
    tickets = []
    # return nil if self.tickets.nil?
    self.tickets.each do |ticket|
      # Can control what the available_ticket looks like here if needed:
      #
      # serialized_ticket = {
      #   id: ticket.id,
      #   price: ticket.price,
      #   description: ticket.description,
      #   status: ticket.status
      # }
      # tickets << serialized_ticket if ticket.status == "Available for purchase"
      #
      tickets << ticket if ticket.user_id == nil
    end
    tickets
  end

  def total_available_tickets
    available_tickets.count
  end

  def total_tickets
    self.tickets.count
  end

  def percent_sold
    return 0 if total_tickets == 0
    sold = total_tickets - total_available_tickets
    percent_sold = sold.percent_of(total_tickets)
    return percent_sold.round()
  end


end

class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end
