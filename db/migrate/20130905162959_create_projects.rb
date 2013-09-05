class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :contributor
      t.string :description
      t.string :tag
      t.string :link
      t.integer :link_type
      t.integer :rating

      t.timestamps
    end
  end
end
