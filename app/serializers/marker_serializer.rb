class MarkerSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :name, :type, :description, :lng, :lat, :image_url, :poi_url
end
