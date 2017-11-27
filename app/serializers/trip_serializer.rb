class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :description, :center_lng, :center_lat
end
