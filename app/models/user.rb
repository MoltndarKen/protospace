class User < ActiveRecord::Base
  #association
  has_many :prototypes
  has_many :comments
  acts_in_relation role: :source, target: :prototype, action: :like
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end


