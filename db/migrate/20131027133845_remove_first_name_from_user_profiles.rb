class RemoveFirstNameFromUserProfiles < ActiveRecord::Migration
  def up
    remove_column :user_profiles, :first_name
  end

  def down
    add_column :user_profiles, :first_name, :string
  end
end
