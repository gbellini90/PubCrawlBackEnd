class BarSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :description, :rating, :pubcrawl_bars
end
