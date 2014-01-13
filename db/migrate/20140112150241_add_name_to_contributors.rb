class AddNameToContributors < ActiveRecord::Migration
  def change
    add_column :contributors, :name, :string
  end
end
