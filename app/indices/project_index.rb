ThinkingSphinx::Index.define :project, :with => :active_record do
  indexes title, :sortable => true
  indexes contributor
  indexes description

  has :id, :as => :project_id
end
