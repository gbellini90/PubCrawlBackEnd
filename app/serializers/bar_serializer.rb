class BarSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :rating, :latitude, :longitude, :pic, :price
end
