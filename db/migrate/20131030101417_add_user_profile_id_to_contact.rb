class AddUserProfileIdToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :user_profile_id, :integer
  end
end
