class RenameTextColumnToArtistName < ActiveRecord::Migration[5.2]
  def change
    rename_column :images, :text, :artist_name
  end
end
