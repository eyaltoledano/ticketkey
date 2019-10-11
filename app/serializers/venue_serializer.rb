class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address
  has_many :events
end
