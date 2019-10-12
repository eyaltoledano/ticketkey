class Event < ApplicationRecord
  belongs_to :brand
  has_many :tickets
  belongs_to :venue

  def available_tickets
    tickets = []
    self.tickets.each do |ticket|
      tickets << ticket if ticket.status == "Available for purchase"
    end
    tickets
  end

  def total_available_tickets
    available_tickets.count
  end

end
