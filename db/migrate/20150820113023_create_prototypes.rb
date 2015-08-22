class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title
      t.text :introduction
      t.string :genre
      t.text :github
      t.text :url

      t.timestamps
    end
  end
end
