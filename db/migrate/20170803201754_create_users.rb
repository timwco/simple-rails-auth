class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :full_name, null: false
      t.text :message, null: false
      t.string :auth_token, null: false

      t.timestamps null: false
    end
  end
end
