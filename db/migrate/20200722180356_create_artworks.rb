class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.integer :artist_id
      t.string :image_url
      t.string :year
      t.text :description
      t.integer :likes

      t.timestamps
    end
  end
end
