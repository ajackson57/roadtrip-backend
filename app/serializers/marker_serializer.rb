class MarkerSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :description, :lng, :lat, :image_url, :poi_url
end
