class Gallery < ActiveRecord::Base
  attr_accessible :project_id, :screenshots_attributes

  has_many :screenshots, :dependent => :destroy
  accepts_nested_attributes_for :screenshots, :allow_destroy => true
end
