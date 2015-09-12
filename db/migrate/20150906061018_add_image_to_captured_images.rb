class AddImageToCapturedImages < ActiveRecord::Migration
  def change
    add_column :captured_images, :image, :string
  end
end
