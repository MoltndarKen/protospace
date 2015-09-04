class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :work, :string
    add_column :users, :member, :string
    add_column :users, :github, :text
  end
end
