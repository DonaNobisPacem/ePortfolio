class Contributor < ActiveRecord::Base
   attr_accessible :name, :link, :contributor_type, :project_id

   def classify
   end
end