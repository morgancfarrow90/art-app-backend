class ArtworkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :image_url, :year, :description, :likes, :artist
end
