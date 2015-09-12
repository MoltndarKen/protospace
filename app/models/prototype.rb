class Prototype < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :list
  belongs_to :user
<<<<<<< HEAD
  has_many :comments
=======
  has_many :captured_images
  accepts_nested_attributes_for :captured_images
>>>>>>> add_upload_systems_user_prototype
end

