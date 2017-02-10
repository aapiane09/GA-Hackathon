class Event < ApplicationRecord
  has_many :ideas, dependent: :destroy
  has_many :events_users
  has_many :users, through: :events_users
end
