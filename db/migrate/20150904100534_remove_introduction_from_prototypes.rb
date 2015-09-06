class RemoveIntroductionFromPrototypes < ActiveRecord::Migration
  def change
    remove_column :prototypes, :introduction, :text
  end
end
