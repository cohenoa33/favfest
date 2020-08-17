class CreateFans < ActiveRecord::Migration[6.0]
  def change
    create_table :fans do |t|
    
      t.string :username
      t.string :password_digest
      t.string :email
      t.timestamps

    end
  end
end
