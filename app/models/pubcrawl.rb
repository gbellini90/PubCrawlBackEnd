class Pubcrawl < ApplicationRecord
  belongs_to :group
  has_many :bars, through: :pubcrawl_bar
  has_many :pubcrawl_bars
end
