class Idea < ApplicationRecord
  acts_as_votable
  
  belongs_to :user
  belongs_to :event
end
