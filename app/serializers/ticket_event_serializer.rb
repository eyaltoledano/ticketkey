class TicketEventSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :date_start, :date_end
end
