class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :target_prototype_id
      t.references :user, index: true

      t.timestamps
    end
  end
end
