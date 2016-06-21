class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name, presence: true
      t.string :old_names, array: true, default: []
      t.string :species, presence: true
      t.string :breed
      t.integer :age
      t.integer :zip_code, presence: true
      t.boolean :needs_help, default: false
      t.string :status_id, default: 1
      t.integer :guardian_id, presence: true

      t.timestamps
    end
  end
end
