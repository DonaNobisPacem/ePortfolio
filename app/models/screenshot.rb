class Screenshot < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :description, :image, :gallery_id

  belongs_to :gallery

  mount_uploader :image, ImageUploader
end
