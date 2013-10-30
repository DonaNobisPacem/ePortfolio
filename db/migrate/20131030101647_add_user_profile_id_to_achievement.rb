class AddUserProfileIdToAchievement < ActiveRecord::Migration
  def change
    add_column :achievements, :user_profile_id, :integer
  end
end
