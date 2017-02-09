class Event < ApplicationRecord
  has_many :ideas, dependent: :destroy
  has_and_belongs_to_many  :users
end
