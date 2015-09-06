class AddDetailsToPrototypes < ActiveRecord::Migration
  def change
    add_column :prototypes, :catch_copy, :text
    add_column :prototypes, :concept, :text
  end
end
