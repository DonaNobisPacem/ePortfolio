class Project < ActiveRecord::Base
  attr_accessible :creator, :contributor, :description, :link, :link_type, :tag_list, :rating, :title, :project_comments_attributes
  attr_accessible :contributors_attributes, :gallery_attributes

  has_one :gallery, :dependent => :destroy
  accepts_nested_attributes_for :gallery

  has_many :user_projects
  has_many :users, :through => :user_projects
  has_many :project_comments, :dependent => :destroy

  has_many :contributors, :dependent => :destroy
  accepts_nested_attributes_for :contributors, :allow_destroy => true

  accepts_nested_attributes_for :project_comments
  acts_as_taggable_on :tag

  letsrate_rateable "quality"

  include PublicActivity::Model
  tracked

  #tracked except: :update, owner: Proc.new{ |controller, model| controller.current_user }

end
