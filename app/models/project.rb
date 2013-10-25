class Project < ActiveRecord::Base
  attr_accessible :contributor, :description, :link, :link_type, :tag_list, :rating, :title, :project_comments_attributes
  
  has_many :user_projects
  has_many :users, :through => :user_projects
  has_many :project_comments, :dependent => :destroy

  accepts_nested_attributes_for :project_comments
  acts_as_taggable_on :tag

  searchable do
  	text :title
  	text :description
  	text :contributor
  end

end
