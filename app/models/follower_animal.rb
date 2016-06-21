class FollowerAnimal < ActiveRecord::Base
  belongs_to :follower,
  belongs_to :animal,
end
