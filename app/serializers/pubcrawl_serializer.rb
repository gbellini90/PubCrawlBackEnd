class PubcrawlSerializer < ActiveModel::Serializer
  attributes :id, :group_id
  belongs_to :group
  has_many :bars, through: :pubcrawl_bars
  has_many :pubcrawl_bars

end
