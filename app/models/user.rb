class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # mount_uploader :photo, PhotoUploader
  mount_uploader :avatar, AvatarUploader
  has_many :posts
  has_many :time_slots, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
