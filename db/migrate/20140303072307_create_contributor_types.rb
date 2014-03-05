class CreateContributorTypes < ActiveRecord::Migration
  def change
    create_table :contributor_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
