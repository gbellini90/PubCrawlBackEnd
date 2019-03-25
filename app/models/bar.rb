class Bar < ApplicationRecord
  has_many :pubcrawl_bars
  has_many :pubcrawls, through: :pubcrawl_bar
end
