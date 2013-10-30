class AddUserProfileIdToWorkExperience < ActiveRecord::Migration
  def change
    add_column :work_experiences, :user_profile_id, :integer
  end
end
