class AddPropertyToCapturedImages < ActiveRecord::Migration
  def change
    add_column :captured_images, :property, :string
  end
end
