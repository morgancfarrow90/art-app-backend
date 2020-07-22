class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.belongs_to :artist, index: true
      t.string :image_url
      t.string :year
      t.text :description
      t.integer :likes

      t.timestamps
    end
  end
end
