class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :fan, null: false, foreign_key: true
      t.references :festival, null: false, foreign_key: true
      t.boolean :wishlist
      t.text :comment

      t.timestamps
    end
  end
end
