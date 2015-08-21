class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.text :title
      t.text :introduction
      t.text :genre
      t.text :github
      t.text :url

      t.timestamps
    end
  end
end
