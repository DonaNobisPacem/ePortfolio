class Project < ActiveRecord::Base
  attr_accessible :contributor, :description, :link, :link_type, :rating, :tag, :title
  has_many :user_projects
  has_many :users, :through => :user_projects
  has_many :comments
end
