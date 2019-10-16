class Ticket < ApplicationRecord
  belongs_to :brand
  belongs_to :event
  has_one :venue, through: :event


  def claimed?
    self.user_id.nil? ? false : true
  end

  def status
    self.claimed? ? "Purchased" : "Available for purchase"
  end



end
