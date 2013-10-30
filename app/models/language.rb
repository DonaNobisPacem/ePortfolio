class Language < ActiveRecord::Base
	belongs_to :user_profile
  attr_accessible :language, :user_profile_id
end
