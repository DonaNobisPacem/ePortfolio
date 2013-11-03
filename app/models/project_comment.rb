class ProjectComment < ActiveRecord::Base
  attr_accessible :content, :project_id, :rating, :relation, :tag, :user_id
  belongs_to :project
  acts_as_taggable_on :tag

  include PublicActivity::Model
  tracked
  
  tracked except: :update, owner: Proc.new{ |controller, model| controller.current_user }
end
