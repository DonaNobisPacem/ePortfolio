class AddLastNameToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :last_name, :string
  end
end
