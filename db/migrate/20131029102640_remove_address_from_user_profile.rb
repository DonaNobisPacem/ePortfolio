class RemoveAddressFromUserProfile < ActiveRecord::Migration
  def up
    remove_column :user_profiles, :address
  end

  def down
    add_column :user_profiles, :address, :string
  end
end
