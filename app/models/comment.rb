class Comment < ActiveRecord::Base
  attr_accessible :content, :project_id, :rating, :relation, :tag, :user_id
end
