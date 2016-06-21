class Animal < ActiveRecord::Base
  belongs_to :guardian, :class_name => "User", :foreign_key => :guardian_id
  belongs_to :status
  has_many :follower_animals, :foreign_key => :animal_id
  has_many :followers, :through => :follower_animals, :source => :user

  validates :name, :species, :zip_code, :guardian_id, presence: true

end
