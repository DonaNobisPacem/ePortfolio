class CreateProjectComments < ActiveRecord::Migration
  def change
    create_table :project_comments do |t|
      t.integer :project_id
      t.integer :user_id
      t.string :content
      t.integer :rating
      t.string :tag
      t.integer :relation

      t.timestamps
    end
  end
end
