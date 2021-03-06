ThinkingSphinx::Index.define :user, :with => :active_record do
  indexes username, :sortable => true
  indexes email
  indexes user_profile.first_name
  indexes user_profile.last_name

  has :id, :as => :user_id
end
