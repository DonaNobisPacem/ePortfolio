class User < ActiveRecord::Base
	has_secure_password
	validates_presence_of :email, :on => :create
	validates_presence_of :username, :on => :create
	validates_presence_of :password, :on => :create

	attr_accessible :email, :password_digest, :username


	before_save { |user| user.email = email.downcase }
	before_save :create_remember_token

	validates :username,  presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
	format: { with: VALID_EMAIL_REGEX },
	uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6, on: :create }
	validates :password_confirmation, presence: { on: :create }
end
