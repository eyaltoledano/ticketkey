class BrandSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  # has_many :events
end
