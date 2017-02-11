class User < ApplicationRecord
  has_secure_password
  mount_uploader :photo, PhotoUploader

  has_many :ideas, dependent: :destroy
  has_many :events_users
  has_many :events, through: :events_users

  validates :email, uniqueness: true
  validates :username, uniqueness: true
  # validates :password_confirmation, :presence => true

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

end
