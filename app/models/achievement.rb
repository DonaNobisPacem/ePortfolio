class Achievement < ActiveRecord::Base
  attr_accessible :description, :title, :user_profile_id
  belongs_to :user_profile
end
