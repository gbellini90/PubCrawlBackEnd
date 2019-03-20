class PubcrawlBarSerializer < ActiveModel::Serializer
  attributes :id, :bar_id, :pubcrawl_id
  belongs_to :pubcrawl
  belongs_to :bar
end
