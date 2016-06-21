class Animal < ActiveRecord::Base
  belongs_to :guardian
  has_many :follower_animals, :foreign_key = :follower_id
  has_many :followed_animals, :through => :follower_animals, :source => :animal
end
