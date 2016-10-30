class Artist < ApplicationRecord
  has_many :songs
  has_many :photos

  #Filters for artists
  scope :order_by_name,        -> { order(:name) }
  scope :order_by_date,        -> { order(:created_at) }

end
