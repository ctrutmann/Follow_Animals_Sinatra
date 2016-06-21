class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, presence: true, uniquness: true
      t.string :hashed_password, presence: true
      t.integer :zip_code, presence: true

      t.timestamps
    end
  end
end
