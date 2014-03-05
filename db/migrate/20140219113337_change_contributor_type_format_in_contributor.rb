class ChangeContributorTypeFormatInContributor < ActiveRecord::Migration
  def up
  	change_column :contributors, :contributor_type, :string
  end

  def down
  	change_column :contributors, :contributor_type, :integer
  end
end
