class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|

      t.timestamps
    end
  end
end
