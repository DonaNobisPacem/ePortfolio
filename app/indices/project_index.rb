ThinkingSphinx::Index.define :project, :with => :active_record do
  indexes title, :sortable => true
  indexes contributors.name
  indexes description
  indexes taggings.tag.name, :as => :tag

  has :id, :as => :project_id
end
