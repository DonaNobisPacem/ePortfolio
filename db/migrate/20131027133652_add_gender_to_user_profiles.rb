class AddGenderToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :gender, :integer
  end
end
