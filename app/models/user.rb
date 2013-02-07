class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :password, :password_confirmation

  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true, presence: true
  validates :password_confirmation, presence: true
end
