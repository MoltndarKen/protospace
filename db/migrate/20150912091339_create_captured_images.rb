class CreateCapturedImages < ActiveRecord::Migration
  def change
    create_table :captured_images do |t|
      t.string :image
      t.references :prototype, index: true
      t.string :property

      t.timestamps
    end
  end
end
