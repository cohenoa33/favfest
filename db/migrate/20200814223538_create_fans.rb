class CreateFans < ActiveRecord::Migration[6.0]
  def change
    create_table :fans do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.datetime :birthday
      t.string :image_url

      t.timestamps
    end
  end
end
