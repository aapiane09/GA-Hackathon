class User < ApplicationRecord
  has_secure_password
  mount_uploader :photo, PhotoUploader
  has_many :ideas, dependent: :destroy
  has_and_belongs_to_many :events

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

end
