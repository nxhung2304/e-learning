class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      # Basic information
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :first_name
      t.string :last_name
      t.integer :role, default: 0

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
