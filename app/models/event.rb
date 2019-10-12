class Event < ApplicationRecord
  belongs_to :brand
  has_many :tickets
  belongs_to :venue

  def available_tickets
    tickets = []
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
      tickets << ticket if ticket.status == "Available for purchase"
    end
    tickets
  end

  def total_available_tickets
    available_tickets.count
  end

end
