class AddFeaturedProjectToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :featured_project, :integer
  end
end
