class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :year
      t.string :image
      t.integer :artist_id
      t.string :genre

      t.timestamps
    end
  end
end
