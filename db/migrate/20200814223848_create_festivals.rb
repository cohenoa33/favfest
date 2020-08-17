class CreateFestivals < ActiveRecord::Migration[6.0]
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :location
      t.integer :organizer_id
      t.string :image_url
      t.datetime :start_date
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
