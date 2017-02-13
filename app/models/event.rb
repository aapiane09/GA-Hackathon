class Event < ApplicationRecord

  extend FriendlyId
    friendly_id :event_name, use: :slugged
  

  has_many :ideas, dependent: :destroy
  has_many :events_users
  has_many :users, through: :events_users
end
