ThinkingSphinx::Index.define :user, :with => :active_record do
  indexes username, :sortable => true
  indexes user_profile.name, :as => :user_name 

  has :id, :as => :user_id
end
