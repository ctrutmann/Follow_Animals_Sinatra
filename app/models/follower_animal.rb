class FollowerAnimal < ActiveRecord::Base
  belongs_to :follower, :class_name => "User", :foreign_key => :follower_id
  belongs_to :followed_animal, :class_name => "Animal", :foreign_key => :animal_id
end
