class User < ApplicationRecord
  # has_secure_password

  has_many :ideas, dependent: :destroy
  has_and_belongs_to_many :events
end
