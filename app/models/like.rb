class Like < ActiveRecord::Base
  belongs_to :user
  acts_in_relation role: :action, source: :user, target: :prototype
end
