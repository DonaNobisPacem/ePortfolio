class UserProfile < ActiveRecord::Base
  attr_accessible :name, :gender, :user_id, :languages_attributes, :contacts_attributes, :education_attributes, :work_experiences_attributes, :birthday
  belongs_to :user

  has_many :languages
  has_many :contacts
  has_many :education
  has_many :work_experiences

  accepts_nested_attributes_for :languages
  accepts_nested_attributes_for :contacts
  accepts_nested_attributes_for :education
  accepts_nested_attributes_for :work_experiences

end
