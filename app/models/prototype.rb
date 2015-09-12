class Prototype < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :list
  belongs_to :user
  has_many :comments
  has_many :captured_images
  accepts_nested_attributes_for :captured_images
end
