class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :user_profile_attributes
  attr_accessible :login, :provider, :uid, :name
  # attr_accessible :title, :body
  attr_accessor :login

  has_many :user_projects
  has_many :projects, :through => :user_projects
  accepts_nested_attributes_for :projects
  
  has_one :user_profile
  accepts_nested_attributes_for :user_profile

  validates :username,
  :uniqueness => {
    :case_sensitive => false
  }

  def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
  end

  def self.find_for_facebook_oauth(provider, uid, name, email, signed_in_resource=nil)
    user = User.where(:email => email).first
    unless user
        user = User.create(:name => name,
                         :provider => provider,
                         :uid => uid,
                         :email => email,
                         :password => Devise.friendly_token[0,20]
                         )

      end
      return user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

end
