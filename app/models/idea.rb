class Idea < ApplicationRecord
  belongs_to :user
  belongs_to :event
  mount_uploader :photo, PhotoUploader
end
