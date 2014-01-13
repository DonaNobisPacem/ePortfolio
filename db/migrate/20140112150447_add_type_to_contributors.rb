class AddTypeToContributors < ActiveRecord::Migration
  def change
    add_column :contributors, :type, :integer
  end
end
