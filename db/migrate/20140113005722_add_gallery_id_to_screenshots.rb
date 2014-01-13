class AddGalleryIdToScreenshots < ActiveRecord::Migration
  def change
    add_column :screenshots, :gallery_id, :integer
  end
end
