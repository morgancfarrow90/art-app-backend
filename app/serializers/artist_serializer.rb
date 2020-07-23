class ArtistSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :biography, :artworks
end
