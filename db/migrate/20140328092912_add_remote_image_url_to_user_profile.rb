class AddRemoteImageUrlToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :remote_image_url, :string
  end
end
