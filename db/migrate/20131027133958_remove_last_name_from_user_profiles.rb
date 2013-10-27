class RemoveLastNameFromUserProfiles < ActiveRecord::Migration
  def up
    remove_column :user_profiles, :last_name
  end

  def down
    add_column :user_profiles, :last_name, :string
  end
end
