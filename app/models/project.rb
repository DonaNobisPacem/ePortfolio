class Project < ActiveRecord::Base
  attr_accessible :contributor, :description, :link, :link_type, :rating, :tag, :title, :project_comments_attributes
  has_many :user_projects
  has_many :users, :through => :user_projects
  has_many :project_comments, :dependent => :destroy
  accepts_nested_attributes_for :project_comments
end
