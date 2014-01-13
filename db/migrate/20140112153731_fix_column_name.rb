class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :contributors, :type, :contributor_type
  end
end
