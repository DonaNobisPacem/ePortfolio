class Education < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user_profile
  attr_accessible :school, :user_profile_id
end
