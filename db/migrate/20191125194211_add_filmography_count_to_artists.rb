class AddFilmographyCountToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :filmography_count, :integer
  end
end
