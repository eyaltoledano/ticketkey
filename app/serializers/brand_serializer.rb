class BrandSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :events
  has_many :tickets, through: :events

  def events
    object.events.sort.reverse!
  end
end
