class UserProfile < ActiveRecord::Base
  attr_accessible :name, :image, :gender, :user_id, :birthday, :first_name, :last_name
  attr_accessible :languages_attributes, :contacts_attributes, :educations_attributes, :work_experiences_attributes, :achievements_attributes
  belongs_to :user

  has_many :languages, :dependent => :destroy
  has_many :contacts, :dependent => :destroy
  has_many :educations, :dependent => :destroy
  has_many :work_experiences, :dependent => :destroy
  has_many :achievements, :dependent => :destroy

  accepts_nested_attributes_for :languages, :allow_destroy => true
  accepts_nested_attributes_for :contacts, :allow_destroy => true
  accepts_nested_attributes_for :educations, :allow_destroy => true
  accepts_nested_attributes_for :work_experiences, :allow_destroy => true
  accepts_nested_attributes_for :achievements, :allow_destroy => true

  mount_uploader :image, ImageUploader

  def fullname
    "#{first_name} #{last_name}"
  end
end
