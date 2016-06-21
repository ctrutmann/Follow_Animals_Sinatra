class User < ActiveRecord::Base
  has_many :animals, :foreign_key => :guardian_id
  has_many :follower_animals, :foreign_key => :follower_id
  has_many :followed_animals, :through => :follower_animals, :source => :animal

  validates :email, :hashed_password, :zip_code, presence: true
  validates :email, uniqueness: true

  include BCrypt

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate(login_password)
    self.password == login_password
  end

end
