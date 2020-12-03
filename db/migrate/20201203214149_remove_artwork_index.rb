class RemoveArtworkIndex < ActiveRecord::Migration[5.2]
  def change
    remove_index :artworks, :artist_id
    add_index :artworks, [:artist_id, :title]

  end
end
