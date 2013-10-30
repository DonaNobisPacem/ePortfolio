class Email < ActiveRecord::Base
  attr_accessible :email, :contact_id
  belongs_to :contact
end
