class Post < ApplicationRecord
  belongs_to :user
  belongs_to :season
  mount_uploader :photo, PhotoUploader
end
