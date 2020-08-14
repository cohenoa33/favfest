class CreateArtistFestivals < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_festivals do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :festival, null: false, foreign_key: true

      t.timestamps
    end
  end
end
