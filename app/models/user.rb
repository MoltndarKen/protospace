class User < ActiveRecord::Base
  #association
  has_many :prototypes
<<<<<<< HEAD
  has_many :comments
=======
  mount_uploader :avatar, AvatarUploader
>>>>>>> add_upload_systems_user_prototype
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end


