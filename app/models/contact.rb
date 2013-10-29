class Contact < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :address, :emails_attributes, :phones_attributes

  has_many :emails
  has_many :phones

  accepts_nested_attributes_for :emails
  accepts_nested_attributes_for :phones
end
