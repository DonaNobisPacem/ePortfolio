class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
