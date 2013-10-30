class Contact < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :address, :emails_attributes, :phones_attributes, :user_profile_id

  has_many :emails, :dependent => :destroy
  has_many :phones, :dependent => :destroy

  accepts_nested_attributes_for :emails, :allow_destroy => true
  accepts_nested_attributes_for :phones, :allow_destroy => true

  belongs_to :user_profile
end
