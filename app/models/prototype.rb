class Prototype < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :web_design,:user_interface,:application_about
end
