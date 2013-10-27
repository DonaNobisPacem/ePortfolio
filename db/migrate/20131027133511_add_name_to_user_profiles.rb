class AddNameToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :name, :string
  end
end
