class CreateCapturedImages < ActiveRecord::Migration
  def change
    create_table :captured_images do |t|
      t.references :prototype, index: true

      t.timestamps
    end
  end
end
