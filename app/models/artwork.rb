class Artwork < ApplicationRecord
  belongs_to :artist
  validates :title, :artist, :image_url, :year, :description, presence: true
end
