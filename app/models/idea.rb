class Idea < ApplicationRecord
  belongs_to :user
  belongs_to :event
  # 
  # validates :title, uniqueness: true
  # validates :username, uniqueness: true
  #
end
