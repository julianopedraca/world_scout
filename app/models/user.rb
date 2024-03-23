class User < ApplicationRecord
  before_validation :transformToDowncase
  has_secure_password

  normalizes :email, with: -> (email) {email.strip.downcase}
  validates :email, presence: { message: "Email can't be blank" }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i ,message: "Please enter a valid email address."}, uniqueness: { message: "Email already exists" }
  validates :username, presence: { message: "Username can't be blank" }, format: { with: /\A@[a-zA-Z0-9_.]+$\Z/ ,message: "Username must start with '@'."} , uniqueness: { message: "Username already exists" }
  encrypts :password_digest, deterministic: true
  encrypts :email, deterministic: true

  private
  def transformToDowncase
    self.username = username&.downcase
  end

end
