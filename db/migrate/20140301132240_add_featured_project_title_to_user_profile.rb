class AddFeaturedProjectTitleToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :featured_project_title, :string
  end
end
