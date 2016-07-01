class Animal < ActiveRecord::Base
  belongs_to :guardian, :class_name => "User", :foreign_key => :guardian_id
  belongs_to :status
  has_many :follower_animals
  has_many :followers, :through => :follower_animals, :source => :user

  before_validation :match_status_and_needs_help

  validates :name, :species, :zip_code, :guardian_id, presence: true

  def match_status_and_needs_help
    if self.status_id == 1 || self.status_id == 5
      self.needs_help = false
    else
      self.needs_help = true
    end
  end

end
