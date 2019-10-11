class EventSerializer < ActiveModel::Serializer
  has_one :venue
  attributes :id, :name, :category, :date_start, :date_end
  belongs_to :brand, serializer: EventBrandSerializer
end
