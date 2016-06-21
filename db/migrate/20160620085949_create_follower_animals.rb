class CreateFollowerAnimals < ActiveRecord::Migration
  def change
    create_table :follower_animals do |t|
      t.integer :follower_id
      t.integer :animal_id

      t.timestamps
    end
  end
end
