class ProjectComment < ActiveRecord::Base
  attr_accessible :content, :project_id, :rating, :relation, :tag, :user_id
  belongs_to :project
  acts_as_taggable_on :tag
end
