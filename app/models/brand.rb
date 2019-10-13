class Brand < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :email, uniqueness: true
  validates :email, presence: true

  has_many :events
  has_many :tickets, through: :events

  def account_name
  	self.name.gsub(" ", "-").downcase
  end

end
