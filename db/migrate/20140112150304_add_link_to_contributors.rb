class AddLinkToContributors < ActiveRecord::Migration
  def change
    add_column :contributors, :link, :string
  end
end
