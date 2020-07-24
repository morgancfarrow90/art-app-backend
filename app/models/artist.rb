class Artist < ApplicationRecord
  has_many :artworks
  validates :name, :biography, presence: true 
end
