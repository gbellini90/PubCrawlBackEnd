class Pubcrawl < ApplicationRecord
  belongs_to :group
  has_many :pubcrawl_bars
  has_many :bars, through: :pubcrawl_bars
end
