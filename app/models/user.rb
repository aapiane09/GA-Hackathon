class User < ApplicationRecord
  has_secure_password

  has_many :ideas, dependent: :destroy
  has_and_belongs_to_many :events

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

end
