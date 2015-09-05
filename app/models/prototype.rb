class Prototype < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :tag1, :tag2, :tag3
end
