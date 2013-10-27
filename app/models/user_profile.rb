class UserProfile < ActiveRecord::Base
  attr_accessible :name, :gender, :user_id
  belongs_to :user
end
