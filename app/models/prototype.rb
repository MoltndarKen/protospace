class Prototype < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :list
  belongs_to :user
  has_many :captured_images
end

