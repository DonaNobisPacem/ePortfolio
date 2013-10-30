class AddUserProfileIdToEducation < ActiveRecord::Migration
  def change
    add_column :educations, :user_profile_id, :integer
  end
end
