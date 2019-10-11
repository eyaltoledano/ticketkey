class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :date_start, :date_end
  belongs_to :brand, serializer: EventBrandSerializer
end
