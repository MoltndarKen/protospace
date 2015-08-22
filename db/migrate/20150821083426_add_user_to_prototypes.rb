class AddUserToPrototypes < ActiveRecord::Migration
  def change
    add_reference :prototypes, :user, index: true
  end
end
