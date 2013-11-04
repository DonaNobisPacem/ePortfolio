class AddFirstNameToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :first_name, :string
  end
end
