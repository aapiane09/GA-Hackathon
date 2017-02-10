class EventsUser < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # validates :user_id, uniqueness: true

end
