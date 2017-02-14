class Idea < ApplicationRecord

  extend FriendlyId
    friendly_id :title, use: :slugged

  acts_as_votable

  belongs_to :user
  belongs_to :event
  mount_uploader :photo, PhotoUploader
end
