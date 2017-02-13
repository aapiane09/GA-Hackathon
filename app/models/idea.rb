class Idea < ApplicationRecord
  acts_as_votable

  belongs_to :user
  belongs_to :event
  mount_uploader :photo, PhotoUploader
end
