class Bar < ApplicationRecord
  has_many :pubcrawls, through: :pubcrawl_bar
  has_many :pubcrawl_bars
end
