class Ticket < ApplicationRecord
  belongs_to :brand
  belongs_to :event

  def claimed?
    self.user_id.nil? ? false : true
  end

  def status
    self.claimed? ? "Owned" : "Available for purchase"
  end
end
